import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../util/extension/scroll_controller_extension.dart';
import '../../../util/profile_feed_type.dart';
import '../../component/profile_list.dart';

@RoutePage()
class LikeUserPage extends ConsumerWidget {
  const LikeUserPage({
    super.key,
    required this.definitionId,
  });
  final String definitionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          child: const Text('いいね！'),
          onTap: () => PrimaryScrollController.of(context).scrollToTop(),
        ),
        flexibleSpace: InkWell(
          onTap: () => PrimaryScrollController.of(context).scrollToTop(),
        ),
      ),
      body: ProfileList(
        userListType: UserListType.liked,
        targetUserId: null,
        targetDefinitionId: definitionId,
      ),
    );
  }
}
