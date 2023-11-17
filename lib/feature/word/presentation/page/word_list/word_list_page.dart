import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/common_widget/button/post_definition_fab.dart';
import '../../../../../core/common_widget/infinity_scroll_widget.dart';
import '../../../../../core/common_widget/simple_widget_for_empty.dart';
import '../../../../../util/constant/initial_main_group.dart';
import '../../../../../util/extension/scroll_controller_extension.dart';
import '../../../application/word_list_state_by_initial.dart';
import '../../../domain/word.dart';
import '../../component/word_tile.dart';
import '../../component/word_tile_shimmer.dart';

@RoutePage()
class WordListPage extends ConsumerWidget {
  const WordListPage({
    super.key,
    required this.selectedInitialSubGroup,
  });

  final InitialSubGroup selectedInitialSubGroup;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wordListProvider =
        wordListStateByInitialNotifierProvider(selectedInitialSubGroup.label);

    String generateEmptyMessage(String initialLabel) {
      final messageList = [
        '「$initialLabel」はまだ誰にも投稿されていません。\n第一人者になるチャンスです..!!',
        '「$initialLabel」はまだ投稿されていません\n投稿してくれると嬉しいです😭',
        '「$initialLabel」は未開拓です..!!',
        '「$initialLabel」は伸びしろたっぷりです😆',
        '「$initialLabel」はまだ投稿されていません😭',
        '「$initialLabel」はまだ誰も投稿していません...!!',
        'やあ✋私は「$initialLabel」である👴。\nここに来た記念に私を投稿してくれ',
        'やっほー！私は「$initialLabel」だよ。投稿してくれるよね？🥺',
        '「$initialLabel」を開くとはお目が高い！',
        '無理にとは言わんけぇ、\n「$initialLabel」を投稿してはくれまいか？👴',
        '🙃んせまりあは稿投だま',
      ];

      // ランダムでメッセージを返す
      return messageList[Random().nextInt(messageList.length)];
    }

    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          child: Text(selectedInitialSubGroup.label),
          onTap: () => PrimaryScrollController.of(context).scrollToTop(),
        ),
        leading: const BackButton(),
        flexibleSpace: InkWell(
          onTap: () => PrimaryScrollController.of(context).scrollToTop(),
        ),
      ),
      body: InfinityScrollWidget(
        listStateNotifierProvider: wordListProvider,
        fetchMore: ref.read(wordListProvider.notifier).fetchMore,
        tileBuilder: (item) => WordTile(word: item as Word),
        shimmerTile: const WordTileShimmer(),
        shimmerTileNumber: 10,
        emptyWidget: SimpleWidgetForEmpty(
          message: generateEmptyMessage(selectedInitialSubGroup.label),
        ),
      ),
      floatingActionButton: const PostDefinitionFAB(),
    );
  }
}
