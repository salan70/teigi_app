// Mocks generated by Mockito 5.4.2 from annotations
// in teigi_app/test/feature/definition/application/definition_id_list_state_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i12;

import 'package:cloud_firestore/cloud_firestore.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:riverpod_annotation/riverpod_annotation.dart' as _i23;
import 'package:teigi_app/feature/definition/domain/definition_for_write.dart'
    as _i13;
import 'package:teigi_app/feature/definition/domain/definition_id_list_state.dart'
    as _i3;
import 'package:teigi_app/feature/definition/repository/entity/definition_document.dart'
    as _i4;
import 'package:teigi_app/feature/definition/repository/fetch_definition_repository.dart'
    as _i14;
import 'package:teigi_app/feature/definition/repository/write_definition_repository.dart'
    as _i11;
import 'package:teigi_app/feature/definition/util/definition_feed_type.dart'
    as _i15;
import 'package:teigi_app/feature/user_config/repository/entity/user_config_document.dart'
    as _i7;
import 'package:teigi_app/feature/user_config/repository/user_config_repository.dart'
    as _i19;
import 'package:teigi_app/feature/user_profile/domain/user_id_list_state.dart'
    as _i5;
import 'package:teigi_app/feature/user_profile/domain/user_profile.dart'
    as _i18;
import 'package:teigi_app/feature/user_profile/repository/entity/user_follow_count_document.dart'
    as _i8;
import 'package:teigi_app/feature/user_profile/repository/entity/user_profile_document.dart'
    as _i6;
import 'package:teigi_app/feature/user_profile/repository/user_follow_repository.dart'
    as _i20;
import 'package:teigi_app/feature/user_profile/repository/user_profile_repository.dart'
    as _i17;
import 'package:teigi_app/feature/word/domain/word_list_state.dart' as _i10;
import 'package:teigi_app/feature/word/repository/entity/word_document.dart'
    as _i9;
import 'package:teigi_app/feature/word/repository/word_repository.dart' as _i21;
import 'package:teigi_app/util/constant/initial_main_group.dart' as _i16;

import 'definition_id_list_state_test.dart' as _i22;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFirebaseFirestore_0 extends _i1.SmartFake
    implements _i2.FirebaseFirestore {
  _FakeFirebaseFirestore_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDefinitionIdListState_1 extends _i1.SmartFake
    implements _i3.DefinitionIdListState {
  _FakeDefinitionIdListState_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDefinitionDocument_2 extends _i1.SmartFake
    implements _i4.DefinitionDocument {
  _FakeDefinitionDocument_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserIdListState_3 extends _i1.SmartFake
    implements _i5.UserIdListState {
  _FakeUserIdListState_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserProfileDocument_4 extends _i1.SmartFake
    implements _i6.UserProfileDocument {
  _FakeUserProfileDocument_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserConfigDocument_5 extends _i1.SmartFake
    implements _i7.UserConfigDocument {
  _FakeUserConfigDocument_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserFollowCountDocument_6 extends _i1.SmartFake
    implements _i8.UserFollowCountDocument {
  _FakeUserFollowCountDocument_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWordDocument_7 extends _i1.SmartFake implements _i9.WordDocument {
  _FakeWordDocument_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWordListState_8 extends _i1.SmartFake implements _i10.WordListState {
  _FakeWordListState_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [WriteDefinitionRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockWriteDefinitionRepository extends _i1.Mock
    implements _i11.WriteDefinitionRepository {
  @override
  _i2.FirebaseFirestore get firestore => (super.noSuchMethod(
        Invocation.getter(#firestore),
        returnValue: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#firestore),
        ),
        returnValueForMissingStub: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#firestore),
        ),
      ) as _i2.FirebaseFirestore);

  @override
  _i12.Future<void> createDefinitionAndMaybeWord(
    String? authorId,
    String? existingWordId,
    _i13.DefinitionForWrite? definitionForWrite,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #createDefinitionAndMaybeWord,
          [
            authorId,
            existingWordId,
            definitionForWrite,
          ],
        ),
        returnValue: _i12.Future<void>.value(),
        returnValueForMissingStub: _i12.Future<void>.value(),
      ) as _i12.Future<void>);

  @override
  _i12.Future<void> updateDefinitionAndMaybeCreateWord(
    String? existingWordId,
    _i13.DefinitionForWrite? definitionForWrite,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateDefinitionAndMaybeCreateWord,
          [
            existingWordId,
            definitionForWrite,
          ],
        ),
        returnValue: _i12.Future<void>.value(),
        returnValueForMissingStub: _i12.Future<void>.value(),
      ) as _i12.Future<void>);

  @override
  _i12.Future<void> likeDefinition(
    String? definitionId,
    String? userId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #likeDefinition,
          [
            definitionId,
            userId,
          ],
        ),
        returnValue: _i12.Future<void>.value(),
        returnValueForMissingStub: _i12.Future<void>.value(),
      ) as _i12.Future<void>);

  @override
  _i12.Future<void> unlikeDefinition(
    String? definitionId,
    String? userId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #unlikeDefinition,
          [
            definitionId,
            userId,
          ],
        ),
        returnValue: _i12.Future<void>.value(),
        returnValueForMissingStub: _i12.Future<void>.value(),
      ) as _i12.Future<void>);

  @override
  _i12.Future<bool> isLikedByUser(
    String? userId,
    String? definitionId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #isLikedByUser,
          [
            userId,
            definitionId,
          ],
        ),
        returnValue: _i12.Future<bool>.value(false),
        returnValueForMissingStub: _i12.Future<bool>.value(false),
      ) as _i12.Future<bool>);
}

/// A class which mocks [FetchDefinitionRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockFetchDefinitionRepository extends _i1.Mock
    implements _i14.FetchDefinitionRepository {
  @override
  _i2.FirebaseFirestore get firestore => (super.noSuchMethod(
        Invocation.getter(#firestore),
        returnValue: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#firestore),
        ),
        returnValueForMissingStub: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#firestore),
        ),
      ) as _i2.FirebaseFirestore);

  @override
  _i12.Future<_i3.DefinitionIdListState>
      fetchHomeRecommendDefinitionIdListState(
    String? currentUserId,
    List<String>? mutedUserIdList,
    _i2.QueryDocumentSnapshot<Object?>? lastDocument,
  ) =>
          (super.noSuchMethod(
            Invocation.method(
              #fetchHomeRecommendDefinitionIdListState,
              [
                currentUserId,
                mutedUserIdList,
                lastDocument,
              ],
            ),
            returnValue: _i12.Future<_i3.DefinitionIdListState>.value(
                _FakeDefinitionIdListState_1(
              this,
              Invocation.method(
                #fetchHomeRecommendDefinitionIdListState,
                [
                  currentUserId,
                  mutedUserIdList,
                  lastDocument,
                ],
              ),
            )),
            returnValueForMissingStub:
                _i12.Future<_i3.DefinitionIdListState>.value(
                    _FakeDefinitionIdListState_1(
              this,
              Invocation.method(
                #fetchHomeRecommendDefinitionIdListState,
                [
                  currentUserId,
                  mutedUserIdList,
                  lastDocument,
                ],
              ),
            )),
          ) as _i12.Future<_i3.DefinitionIdListState>);

  @override
  _i12.Future<_i3.DefinitionIdListState>
      fetchHomeFollowingDefinitionIdListState(
    String? currentUserId,
    List<String>? targetUserIdList,
    _i2.QueryDocumentSnapshot<Object?>? lastDocument,
  ) =>
          (super.noSuchMethod(
            Invocation.method(
              #fetchHomeFollowingDefinitionIdListState,
              [
                currentUserId,
                targetUserIdList,
                lastDocument,
              ],
            ),
            returnValue: _i12.Future<_i3.DefinitionIdListState>.value(
                _FakeDefinitionIdListState_1(
              this,
              Invocation.method(
                #fetchHomeFollowingDefinitionIdListState,
                [
                  currentUserId,
                  targetUserIdList,
                  lastDocument,
                ],
              ),
            )),
            returnValueForMissingStub:
                _i12.Future<_i3.DefinitionIdListState>.value(
                    _FakeDefinitionIdListState_1(
              this,
              Invocation.method(
                #fetchHomeFollowingDefinitionIdListState,
                [
                  currentUserId,
                  targetUserIdList,
                  lastDocument,
                ],
              ),
            )),
          ) as _i12.Future<_i3.DefinitionIdListState>);

  @override
  _i12.Future<_i3.DefinitionIdListState> fetchWordTopDefinitionIdListState(
    _i15.WordTopOrderByType? orderByType,
    String? currentUserId,
    List<String>? mutedUserIdList,
    String? wordId,
    _i2.QueryDocumentSnapshot<Object?>? lastDocument,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchWordTopDefinitionIdListState,
          [
            orderByType,
            currentUserId,
            mutedUserIdList,
            wordId,
            lastDocument,
          ],
        ),
        returnValue: _i12.Future<_i3.DefinitionIdListState>.value(
            _FakeDefinitionIdListState_1(
          this,
          Invocation.method(
            #fetchWordTopDefinitionIdListState,
            [
              orderByType,
              currentUserId,
              mutedUserIdList,
              wordId,
              lastDocument,
            ],
          ),
        )),
        returnValueForMissingStub: _i12.Future<_i3.DefinitionIdListState>.value(
            _FakeDefinitionIdListState_1(
          this,
          Invocation.method(
            #fetchWordTopDefinitionIdListState,
            [
              orderByType,
              currentUserId,
              mutedUserIdList,
              wordId,
              lastDocument,
            ],
          ),
        )),
      ) as _i12.Future<_i3.DefinitionIdListState>);

  @override
  _i12.Future<_i3.DefinitionIdListState>
      fetchProfileCreatedAtDefinitionIdListState(
    String? currentUserId,
    String? targetUserId,
    _i2.QueryDocumentSnapshot<Object?>? lastDocument,
  ) =>
          (super.noSuchMethod(
            Invocation.method(
              #fetchProfileCreatedAtDefinitionIdListState,
              [
                currentUserId,
                targetUserId,
                lastDocument,
              ],
            ),
            returnValue: _i12.Future<_i3.DefinitionIdListState>.value(
                _FakeDefinitionIdListState_1(
              this,
              Invocation.method(
                #fetchProfileCreatedAtDefinitionIdListState,
                [
                  currentUserId,
                  targetUserId,
                  lastDocument,
                ],
              ),
            )),
            returnValueForMissingStub:
                _i12.Future<_i3.DefinitionIdListState>.value(
                    _FakeDefinitionIdListState_1(
              this,
              Invocation.method(
                #fetchProfileCreatedAtDefinitionIdListState,
                [
                  currentUserId,
                  targetUserId,
                  lastDocument,
                ],
              ),
            )),
          ) as _i12.Future<_i3.DefinitionIdListState>);

  @override
  _i12.Future<_i3.DefinitionIdListState> fetchLikedByUserDefinitionIdListState(
    String? currentUserId,
    String? targetUserId,
    List<String>? mutedUserIdList,
    _i2.QueryDocumentSnapshot<Object?>? initialLastDocument,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchLikedByUserDefinitionIdListState,
          [
            currentUserId,
            targetUserId,
            mutedUserIdList,
            initialLastDocument,
          ],
        ),
        returnValue: _i12.Future<_i3.DefinitionIdListState>.value(
            _FakeDefinitionIdListState_1(
          this,
          Invocation.method(
            #fetchLikedByUserDefinitionIdListState,
            [
              currentUserId,
              targetUserId,
              mutedUserIdList,
              initialLastDocument,
            ],
          ),
        )),
        returnValueForMissingStub: _i12.Future<_i3.DefinitionIdListState>.value(
            _FakeDefinitionIdListState_1(
          this,
          Invocation.method(
            #fetchLikedByUserDefinitionIdListState,
            [
              currentUserId,
              targetUserId,
              mutedUserIdList,
              initialLastDocument,
            ],
          ),
        )),
      ) as _i12.Future<_i3.DefinitionIdListState>);

  @override
  _i12.Future<_i4.DefinitionDocument> fetchDefinition(String? definitionId) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchDefinition,
          [definitionId],
        ),
        returnValue:
            _i12.Future<_i4.DefinitionDocument>.value(_FakeDefinitionDocument_2(
          this,
          Invocation.method(
            #fetchDefinition,
            [definitionId],
          ),
        )),
        returnValueForMissingStub:
            _i12.Future<_i4.DefinitionDocument>.value(_FakeDefinitionDocument_2(
          this,
          Invocation.method(
            #fetchDefinition,
            [definitionId],
          ),
        )),
      ) as _i12.Future<_i4.DefinitionDocument>);

  @override
  _i12.Future<_i3.DefinitionIdListState>
      fetchIndividualDictionaryDefinitionIdListState(
    String? currentUserId,
    String? targetUserId,
    _i16.InitialSubGroup? initialSubGroup,
    _i2.QueryDocumentSnapshot<Object?>? lastDocument,
  ) =>
          (super.noSuchMethod(
            Invocation.method(
              #fetchIndividualDictionaryDefinitionIdListState,
              [
                currentUserId,
                targetUserId,
                initialSubGroup,
                lastDocument,
              ],
            ),
            returnValue: _i12.Future<_i3.DefinitionIdListState>.value(
                _FakeDefinitionIdListState_1(
              this,
              Invocation.method(
                #fetchIndividualDictionaryDefinitionIdListState,
                [
                  currentUserId,
                  targetUserId,
                  initialSubGroup,
                  lastDocument,
                ],
              ),
            )),
            returnValueForMissingStub:
                _i12.Future<_i3.DefinitionIdListState>.value(
                    _FakeDefinitionIdListState_1(
              this,
              Invocation.method(
                #fetchIndividualDictionaryDefinitionIdListState,
                [
                  currentUserId,
                  targetUserId,
                  initialSubGroup,
                  lastDocument,
                ],
              ),
            )),
          ) as _i12.Future<_i3.DefinitionIdListState>);

  @override
  _i12.Future<_i5.UserIdListState> fetchLikedUserIdList(
    String? definitionId,
    _i2.QueryDocumentSnapshot<Object?>? lastDocument,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchLikedUserIdList,
          [
            definitionId,
            lastDocument,
          ],
        ),
        returnValue:
            _i12.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchLikedUserIdList,
            [
              definitionId,
              lastDocument,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i12.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchLikedUserIdList,
            [
              definitionId,
              lastDocument,
            ],
          ),
        )),
      ) as _i12.Future<_i5.UserIdListState>);
}

/// A class which mocks [UserProfileRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserProfileRepository extends _i1.Mock
    implements _i17.UserProfileRepository {
  @override
  _i2.FirebaseFirestore get firestore => (super.noSuchMethod(
        Invocation.getter(#firestore),
        returnValue: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#firestore),
        ),
        returnValueForMissingStub: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#firestore),
        ),
      ) as _i2.FirebaseFirestore);

  @override
  _i12.Future<_i6.UserProfileDocument> fetchUserProfile(String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchUserProfile,
          [userId],
        ),
        returnValue: _i12.Future<_i6.UserProfileDocument>.value(
            _FakeUserProfileDocument_4(
          this,
          Invocation.method(
            #fetchUserProfile,
            [userId],
          ),
        )),
        returnValueForMissingStub: _i12.Future<_i6.UserProfileDocument>.value(
            _FakeUserProfileDocument_4(
          this,
          Invocation.method(
            #fetchUserProfile,
            [userId],
          ),
        )),
      ) as _i12.Future<_i6.UserProfileDocument>);

  @override
  _i12.Future<_i6.UserProfileDocument?> searchUserProfileByPublicId(
          String? publicId) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchUserProfileByPublicId,
          [publicId],
        ),
        returnValue: _i12.Future<_i6.UserProfileDocument?>.value(),
        returnValueForMissingStub:
            _i12.Future<_i6.UserProfileDocument?>.value(),
      ) as _i12.Future<_i6.UserProfileDocument?>);

  @override
  _i12.Future<void> updateUserProfile(_i18.UserProfile? userProfileForWrite) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateUserProfile,
          [userProfileForWrite],
        ),
        returnValue: _i12.Future<void>.value(),
        returnValueForMissingStub: _i12.Future<void>.value(),
      ) as _i12.Future<void>);
}

/// A class which mocks [UserConfigRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserConfigRepository extends _i1.Mock
    implements _i19.UserConfigRepository {
  @override
  _i2.FirebaseFirestore get firestore => (super.noSuchMethod(
        Invocation.getter(#firestore),
        returnValue: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#firestore),
        ),
        returnValueForMissingStub: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#firestore),
        ),
      ) as _i2.FirebaseFirestore);

  @override
  _i12.Future<_i7.UserConfigDocument> fetchUserConfig(String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchUserConfig,
          [userId],
        ),
        returnValue:
            _i12.Future<_i7.UserConfigDocument>.value(_FakeUserConfigDocument_5(
          this,
          Invocation.method(
            #fetchUserConfig,
            [userId],
          ),
        )),
        returnValueForMissingStub:
            _i12.Future<_i7.UserConfigDocument>.value(_FakeUserConfigDocument_5(
          this,
          Invocation.method(
            #fetchUserConfig,
            [userId],
          ),
        )),
      ) as _i12.Future<_i7.UserConfigDocument>);

  @override
  _i12.Future<void> appendMutedUserIdList(
    String? userId,
    String? mutedUserId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #appendMutedUserIdList,
          [
            userId,
            mutedUserId,
          ],
        ),
        returnValue: _i12.Future<void>.value(),
        returnValueForMissingStub: _i12.Future<void>.value(),
      ) as _i12.Future<void>);

  @override
  _i12.Future<void> removeMutedUserIdList(
    String? userId,
    String? mutedUserId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeMutedUserIdList,
          [
            userId,
            mutedUserId,
          ],
        ),
        returnValue: _i12.Future<void>.value(),
        returnValueForMissingStub: _i12.Future<void>.value(),
      ) as _i12.Future<void>);
}

/// A class which mocks [UserFollowRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserFollowRepository extends _i1.Mock
    implements _i20.UserFollowRepository {
  @override
  _i2.FirebaseFirestore get firestore => (super.noSuchMethod(
        Invocation.getter(#firestore),
        returnValue: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#firestore),
        ),
        returnValueForMissingStub: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#firestore),
        ),
      ) as _i2.FirebaseFirestore);

  @override
  _i12.Future<_i8.UserFollowCountDocument> fetchUserFollowCount(
          String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchUserFollowCount,
          [userId],
        ),
        returnValue: _i12.Future<_i8.UserFollowCountDocument>.value(
            _FakeUserFollowCountDocument_6(
          this,
          Invocation.method(
            #fetchUserFollowCount,
            [userId],
          ),
        )),
        returnValueForMissingStub:
            _i12.Future<_i8.UserFollowCountDocument>.value(
                _FakeUserFollowCountDocument_6(
          this,
          Invocation.method(
            #fetchUserFollowCount,
            [userId],
          ),
        )),
      ) as _i12.Future<_i8.UserFollowCountDocument>);

  @override
  _i12.Future<void> follow(
    String? currentUserId,
    String? targetUserId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #follow,
          [
            currentUserId,
            targetUserId,
          ],
        ),
        returnValue: _i12.Future<void>.value(),
        returnValueForMissingStub: _i12.Future<void>.value(),
      ) as _i12.Future<void>);

  @override
  _i12.Future<void> unfollow(
    String? currentUserId,
    String? targetUserId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #unfollow,
          [
            currentUserId,
            targetUserId,
          ],
        ),
        returnValue: _i12.Future<void>.value(),
        returnValueForMissingStub: _i12.Future<void>.value(),
      ) as _i12.Future<void>);

  @override
  _i12.Future<bool> isFollowing(
    String? currentUserId,
    String? targetUserId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #isFollowing,
          [
            currentUserId,
            targetUserId,
          ],
        ),
        returnValue: _i12.Future<bool>.value(false),
        returnValueForMissingStub: _i12.Future<bool>.value(false),
      ) as _i12.Future<bool>);

  @override
  _i12.Future<List<String>> fetchAllFollowingIdList(String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchAllFollowingIdList,
          [userId],
        ),
        returnValue: _i12.Future<List<String>>.value(<String>[]),
        returnValueForMissingStub: _i12.Future<List<String>>.value(<String>[]),
      ) as _i12.Future<List<String>>);

  @override
  _i12.Future<_i5.UserIdListState> fetchFollowingIdList(
    String? userId,
    _i2.QueryDocumentSnapshot<Object?>? lastDocument,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchFollowingIdList,
          [
            userId,
            lastDocument,
          ],
        ),
        returnValue:
            _i12.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchFollowingIdList,
            [
              userId,
              lastDocument,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i12.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchFollowingIdList,
            [
              userId,
              lastDocument,
            ],
          ),
        )),
      ) as _i12.Future<_i5.UserIdListState>);

  @override
  _i12.Future<_i5.UserIdListState> fetchFollowerIdList(
    String? userId,
    _i2.QueryDocumentSnapshot<Object?>? lastDocument,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchFollowerIdList,
          [
            userId,
            lastDocument,
          ],
        ),
        returnValue:
            _i12.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchFollowerIdList,
            [
              userId,
              lastDocument,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i12.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchFollowerIdList,
            [
              userId,
              lastDocument,
            ],
          ),
        )),
      ) as _i12.Future<_i5.UserIdListState>);
}

/// A class which mocks [WordRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockWordRepository extends _i1.Mock implements _i21.WordRepository {
  @override
  _i2.FirebaseFirestore get firestore => (super.noSuchMethod(
        Invocation.getter(#firestore),
        returnValue: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#firestore),
        ),
        returnValueForMissingStub: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#firestore),
        ),
      ) as _i2.FirebaseFirestore);

  @override
  _i12.Future<_i9.WordDocument> fetchWordById(String? wordId) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchWordById,
          [wordId],
        ),
        returnValue: _i12.Future<_i9.WordDocument>.value(_FakeWordDocument_7(
          this,
          Invocation.method(
            #fetchWordById,
            [wordId],
          ),
        )),
        returnValueForMissingStub:
            _i12.Future<_i9.WordDocument>.value(_FakeWordDocument_7(
          this,
          Invocation.method(
            #fetchWordById,
            [wordId],
          ),
        )),
      ) as _i12.Future<_i9.WordDocument>);

  @override
  _i12.Future<String?> findWordId(
    String? word,
    String? wordReading,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #findWordId,
          [
            word,
            wordReading,
          ],
        ),
        returnValue: _i12.Future<String?>.value(),
        returnValueForMissingStub: _i12.Future<String?>.value(),
      ) as _i12.Future<String?>);

  @override
  _i12.Future<_i10.WordListState> fetchWordListStateByInitial(
    String? initial,
    String? currentUserId,
    List<String>? mutedUserIdList,
    _i2.QueryDocumentSnapshot<Object?>? documentSnapshot,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchWordListStateByInitial,
          [
            initial,
            currentUserId,
            mutedUserIdList,
            documentSnapshot,
          ],
        ),
        returnValue: _i12.Future<_i10.WordListState>.value(_FakeWordListState_8(
          this,
          Invocation.method(
            #fetchWordListStateByInitial,
            [
              initial,
              currentUserId,
              mutedUserIdList,
              documentSnapshot,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i12.Future<_i10.WordListState>.value(_FakeWordListState_8(
          this,
          Invocation.method(
            #fetchWordListStateByInitial,
            [
              initial,
              currentUserId,
              mutedUserIdList,
              documentSnapshot,
            ],
          ),
        )),
      ) as _i12.Future<_i10.WordListState>);

  @override
  _i12.Future<_i10.WordListState> fetchWordListStateBySearchWord(
    String? searchWord,
    String? currentUserId,
    List<String>? mutedUserIdList,
    _i2.QueryDocumentSnapshot<Object?>? documentSnapshot,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchWordListStateBySearchWord,
          [
            searchWord,
            currentUserId,
            mutedUserIdList,
            documentSnapshot,
          ],
        ),
        returnValue: _i12.Future<_i10.WordListState>.value(_FakeWordListState_8(
          this,
          Invocation.method(
            #fetchWordListStateBySearchWord,
            [
              searchWord,
              currentUserId,
              mutedUserIdList,
              documentSnapshot,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i12.Future<_i10.WordListState>.value(_FakeWordListState_8(
          this,
          Invocation.method(
            #fetchWordListStateBySearchWord,
            [
              searchWord,
              currentUserId,
              mutedUserIdList,
              documentSnapshot,
            ],
          ),
        )),
      ) as _i12.Future<_i10.WordListState>);

  @override
  _i12.Future<int> fetchPostedDefinitionCount(
    String? wordId,
    String? currentUserId,
    List<String>? mutedUserIdList,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchPostedDefinitionCount,
          [
            wordId,
            currentUserId,
            mutedUserIdList,
          ],
        ),
        returnValue: _i12.Future<int>.value(0),
        returnValueForMissingStub: _i12.Future<int>.value(0),
      ) as _i12.Future<int>);
}

/// A class which mocks [Listener].
///
/// See the documentation for Mockito's code generation for more information.
class MockListener extends _i1.Mock
    implements _i22.Listener<_i23.AsyncValue<_i3.DefinitionIdListState>> {
  @override
  void call(
    _i23.AsyncValue<_i3.DefinitionIdListState>? previous,
    _i23.AsyncValue<_i3.DefinitionIdListState>? next,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #call,
          [
            previous,
            next,
          ],
        ),
        returnValueForMissingStub: null,
      );
}
