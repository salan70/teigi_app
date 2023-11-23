import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/common_widget/button/other_user_action_icon_button.dart';
import '../../../../../core/common_widget/button/post_definition_fab.dart';
import '../../../../../core/common_widget/button/to_search_user_button.dart';
import '../../../../../core/common_widget/simple_widget_for_empty.dart';
import '../../../../../core/common_widget/stickey_tab_bar_deligate.dart';
import '../../../../../util/extension/scroll_controller_extension.dart';
import '../../../../../util/logger.dart';
import '../../../../auth/application/auth_state.dart';
import '../../../../definition/presentation/component/definition_list.dart';
import '../../../../definition/util/definition_feed_type.dart';
import '../../../application/user_profile_state.dart';
import 'profile_widget.dart';

@RoutePage()
class ProfilePage extends ConsumerWidget {
  const ProfilePage({
    super.key,
    required this.targetUserId,
  });

  final String targetUserId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUserId = ref.watch(userIdProvider)!;
    final asyncTargetUserProfile = ref.watch(userProfileProvider(targetUserId));

    final isMyProfile = currentUserId == targetUserId;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool _) {
              return <Widget>[
                SliverAppBar(
                  forceElevated: true,
                  floating: true,
                  title: asyncTargetUserProfile.when(
                    data: (targetUserProfile) {
                      return Text(
                        targetUserProfile.name,
                        overflow: TextOverflow.ellipsis,
                      );
                    },
                    loading: () => const Text(''),
                    error: (error, stackTrace) {
                      logger.e('error: $error, stackTrace: $stackTrace');
                      return const Text('エラー');
                    },
                  ),
                  actions: [
                    isMyProfile
                        ? const ToSearchUserButton()
                        : OtherUserActionIconButton(ownerId: targetUserId),
                  ],
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [ProfileWidget(targetUserId: targetUserId)],
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: StickyTabBarDelegate(
                    tabBar: TabBar(
                      labelStyle: Theme.of(context).textTheme.titleMedium,
                      indicatorWeight: 3,
                      tabs: const [
                        Tab(text: '投稿順'),
                        Tab(text: 'いいね'),
                      ],
                      onTap: (_) {
                        if (DefaultTabController.of(context).indexIsChanging) {
                          // * タブを切り替えた場合
                          return;
                        }

                        // * 同じタブをタップした場合
                        PrimaryScrollController.of(context).scrollToTop();
                      },
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                DefinitionList(
                  definitionFeedType:
                      DefinitionFeedType.profileOrderByCreatedAt,
                  targetUserId: targetUserId,
                  emptyWidget: SimpleWidgetForEmpty(
                    message: isMyProfile ? '🙃んせまりあは稿投だま' : '投稿がありません。',
                  ),
                ),
                DefinitionList(
                  definitionFeedType: DefinitionFeedType.profileLiked,
                  targetUserId: targetUserId,
                  emptyWidget: SimpleWidgetForEmpty(
                    message: isMyProfile ? 'いいねした投稿が表示されます💖' : 'いいねした投稿がありません',
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: const PostDefinitionFAB(),
      ),
    );
  }
}
