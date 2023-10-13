import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:teigi_app/feature/definition/application/definition_service.dart';
import 'package:teigi_app/feature/definition/repository/definition_repository.dart';

import '../../../mock/mock_data.dart';
import 'definition_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<DefinitionRepository>(),
  MockSpec<Listener<AsyncValue<void>>>(),
])

// ignore: one_member_abstracts, unreachable_from_main
abstract class Listener<T> {
// ignore: unreachable_from_main
  void call(T? previous, T next);
}

void main() {
  final mockDefinitionRepository = MockDefinitionRepository();
  final listener = MockListener();

  late ProviderContainer container;

  setUp(() {
    container = ProviderContainer(
      overrides: [
        definitionRepositoryProvider
            .overrideWithValue(mockDefinitionRepository),
      ],
    );
    addTearDown(container.dispose);
  });

  tearDown(() {
    reset(mockDefinitionRepository);
    reset(listener);
  });

  /// definitionServiceProviderをlistenし、DefinitionServiceを返す
  DefinitionService init() {
    container.listen(
      definitionServiceProvider,
      listener,
      fireImmediately: true,
    );

    return container.read(
      definitionServiceProvider.notifier,
    );
  }

  group('tapLike()', () {
    test('いいね登録: stateと、想定通りにrepositoryの関数が呼ばれることを検証', () async {
      // * Arrange
      final definitionService = init();
      // いいね登録のため、isLikedByUserがfalseのDefinitionを用意
      final definition = mockDefinition.copyWith(isLikedByUser: false);

      // * Act
      await definitionService.tapLike(definition);

      // * Assert
      // stateの検証
      verifyInOrder([
        // build()時
        listener.call(null, const AsyncData(null)),
        // tapLike()時
        listener.call(
          const AsyncData(null),
          const AsyncData(null),
        ),
      ]);
      // 他にlistenerが発火されないことを検証
      verifyNoMoreInteractions(listener);

      // 想定通りにrepositoryの関数が呼ばれているか検証
      verify(
        mockDefinitionRepository.likeDefinition(definition.id, any),
      ).called(1);

      // 想定外の関数が呼ばれていないか検証
      verifyNever(mockDefinitionRepository.unlikeDefinition(any, any));
    });

    test('いいね解除: stateと、想定通りにrepositoryの関数が呼ばれることを検証', () async {
      // * Arrange
      final definitionService = init();
      // いいね解除のため、isLikedByUserがtrueのDefinitionを用意
      final definition = mockDefinition.copyWith(isLikedByUser: true);

      // * Act
      await definitionService.tapLike(definition);

      // * Assert
      // stateの検証
      verifyInOrder([
        // build()時
        listener.call(null, const AsyncData(null)),
        // tapLike()後
        listener.call(
          const AsyncData(null),
          const AsyncData(null),
        ),
      ]);
      // 他にlistenerが発火されないことを検証
      verifyNoMoreInteractions(listener);

      // 想定通りにrepositoryの関数が呼ばれているか検証
      verify(
        mockDefinitionRepository.unlikeDefinition(definition.id, any),
      ).called(1);

      // 想定外の関数が呼ばれていないか検証
      verifyNever(mockDefinitionRepository.likeDefinition(any, any));
    });

    test('エラー発生時の検証', () async {
      // * Arrange
      final definitionService = init();
      final testException = Exception('likeDefinitionでエラー発生');
      when(
        mockDefinitionRepository.likeDefinition(any, any),
      ).thenThrow(testException);

      // * Act
      await definitionService.tapLike(mockDefinition);

      // * Assert
      // stateの検証
      verifyInOrder([
        // build()時
        listener.call(null, const AsyncData(null)),
        // tapLike()後
        listener.call(
          const AsyncData(null),
          // エラーがスローされた際、stateにAsyncErrorが入ることを検証
          argThat(
            isA<AsyncValue<void>>().having(
              (data) => data.error,
              'error',
              testException,
            ),
          ),
        ),
      ]);
      // 他にlistenerが発火されないことを検証
      verifyNoMoreInteractions(listener);
    });

    // TODO(me): definitionProviderが再生成されているか検証するテスト書く
    // providerがinvalidateされたことを検証する方法がわからないため一旦保留
    //
    // test('definitionProviderが再生成されているか検証', () async {});
  });

  // TODO(me): refreshAll()のテスト書く
  // providerがinvalidateされたことを検証する方法がわからないため一旦保留
  //
  // group('refreshAll()', () {});
}
