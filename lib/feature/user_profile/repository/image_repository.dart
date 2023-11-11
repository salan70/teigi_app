import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_repository.g.dart';

@Riverpod(keepAlive: true)
ImageRepository imageRepository(ImageRepositoryRef ref) => ImageRepository();

class ImageRepository {
  ImageRepository();

  /// [imageSource] から画像を取得する（カメラ or アルバム）
  ///
  /// 画像が選択されなかった場合はnullを返す
  Future<XFile?> pickImage(ImageSource imageSource) async {
    return ImagePicker().pickImage(source: imageSource);
  }

  /// 画像を切り抜く
  Future<CroppedFile?> cropImage(String imagePath) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: imagePath,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: '',
          showCropGrid: false,
          hideBottomControls: true,
          initAspectRatio: CropAspectRatioPreset.original,
        ),
        IOSUiSettings(
          hidesNavigationBar: true,
          aspectRatioPickerButtonHidden: true,
          doneButtonTitle: '次へ',
          cancelButtonTitle: '戻る',
        ),
      ],
      cropStyle: CropStyle.circle, 
    );
    return croppedFile;
  }
}
