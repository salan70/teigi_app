import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../base_page.dart';
import '../../feature/definition/domain/definition.dart';
import '../../feature/definition/presentation/page/definition_detail/definition_detail_page.dart';
import '../../feature/definition/presentation/page/edit_definition/edit_definition_page.dart';
import '../../feature/definition/presentation/page/home/home_page.dart';
import '../../feature/definition/presentation/page/post_definition/post_definition_page.dart';
import '../../feature/definition/util/write_definition_form_type.dart';
import '../../feature/setting/presentation/license_page.dart';
import '../../feature/setting/presentation/muted_user_list_page.dart';
import '../../feature/setting/presentation/setting_page.dart';
import '../../feature/user_profile/presentation/page/following_and_follower_list/following_and_follower_list_page.dart';
import '../../feature/user_profile/presentation/page/like_user_page.dart/like_user_page.dart';
import '../../feature/user_profile/presentation/page/profile/profile_page.dart';
import '../../feature/word/presentation/page/everyone_dictionary/everyone_dictionary_page.dart';
import '../../feature/word/presentation/page/individual_dictionary/individual_dictionary_page.dart';
import '../../feature/word/presentation/page/individual_dictionary_definition_list/individual_dictionary_definition_list.dart';
import '../../feature/word/presentation/page/initial_sub_group_index/initial_sub_group_index_page.dart';
import '../../feature/word/presentation/page/search_word_result/search_word_result_page.dart';
import '../../feature/word/presentation/page/word_list/word_list_page.dart';
import '../../feature/word/presentation/page/word_top/word_top_page.dart';
import '../../feature/word/util/dictionary_page_type.dart';
import '../../util/constant/initial_main_group.dart';

part 'app_router.g.dart';
part 'app_router.gr.dart';

@riverpod
Raw<AppRouter> appRouter(AppRouterRef ref) => AppRouter();

// TODO(me): 一部Routeのpathにidを含める
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  final List<AutoRoute> commonRouteList = [
    AutoRoute(
      path: 'definition_detail',
      page: DefinitionDetailRoute.page,
    ),
    AutoRoute(
      path: 'like_user_list',
      page: LikeUserRoute.page,
    ),
    AutoRoute(
      path: 'word_top',
      page: WordTopRoute.page,
    ),
    AutoRoute(
      path: 'profile',
      page: ProfileRoute.page,
    ),
    AutoRoute(
      path: 'following_and_follower_list',
      page: FollowingAndFollowerListRoute.page,
    ),
    AutoRoute(
      path: 'initial_sub_group_index',
      page: InitialSubGroupIndexRoute.page,
    ),
    AutoRoute(
      path: 'individual_dictionary_definition_list',
      page: IndividualDictionaryDefinitionListRoute.page,
    ),
  ];

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: BaseRoute.page,
          children: [
            AutoRoute(
              path: 'home',
              page: HomeRouterRoute.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: HomeRoute.page,
                ),
                AutoRoute(
                  path: 'individual_dictionary',
                  page: IndividualDictionaryRoute.page,
                ),
                ...commonRouteList,
              ],
            ),
            AutoRoute(
              path: 'individual_dictionary',
              page: IndividualDictionaryRouterRoute.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: IndividualDictionaryRoute.page,
                ),
                ...commonRouteList,
              ],
            ),
            AutoRoute(
              path: 'index',
              page: EveryoneDictionaryRouterRoute.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: EveryoneDictionaryRoute.page,
                ),
                AutoRoute(
                  path: 'word_list',
                  page: WordListRoute.page,
                ),
                AutoRoute(
                  path: 'search_word_result',
                  page: SearchWordResultRoute.page,
                ),
                AutoRoute(
                  path: 'individual_dictionary',
                  page: IndividualDictionaryRoute.page,
                ),
                ...commonRouteList,
              ],
            ),
          ],
        ),
        AutoRoute(
          path: '/setting',
          page: SettingRouterRoute.page,
          fullscreenDialog: true,
          children: [
            AutoRoute(
              initial: true,
              page: SettingRoute.page,
            ),
            AutoRoute(
              path: 'license',
              page: MyLicenseRoute.page,
            ),
            AutoRoute(
              path: 'muted_user_list',
              page: MutedUserListRoute.page,
            ),
          ],
        ),
        AutoRoute(
          path: '/post_definition',
          page: PostDefinitionRoute.page,
          fullscreenDialog: true,
        ),
        AutoRoute(
          path: '/edit_definition',
          page: EditDefinitionRoute.page,
          fullscreenDialog: true,
        ),
      ];
}
