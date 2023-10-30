// Mocks generated by Mockito 5.4.2 from annotations
// in teigi_app/test/feature/user_profile/application/user_profile_state_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:cloud_firestore/cloud_firestore.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:teigi_app/feature/user_profile/domain/user_id_list_state.dart'
    as _i5;
import 'package:teigi_app/feature/user_profile/repository/entity/user_follow_count_document.dart'
    as _i4;
import 'package:teigi_app/feature/user_profile/repository/entity/user_profile_document.dart'
    as _i3;
import 'package:teigi_app/feature/user_profile/repository/user_follow_repository.dart'
    as _i8;
import 'package:teigi_app/feature/user_profile/repository/user_profile_repository.dart'
    as _i6;

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

class _FakeUserProfileDocument_1 extends _i1.SmartFake
    implements _i3.UserProfileDocument {
  _FakeUserProfileDocument_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserFollowCountDocument_2 extends _i1.SmartFake
    implements _i4.UserFollowCountDocument {
  _FakeUserFollowCountDocument_2(
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

/// A class which mocks [UserProfileRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserProfileRepository extends _i1.Mock
    implements _i6.UserProfileRepository {
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
  _i7.Future<_i3.UserProfileDocument> fetchUserProfile(String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchUserProfile,
          [userId],
        ),
        returnValue: _i7.Future<_i3.UserProfileDocument>.value(
            _FakeUserProfileDocument_1(
          this,
          Invocation.method(
            #fetchUserProfile,
            [userId],
          ),
        )),
        returnValueForMissingStub: _i7.Future<_i3.UserProfileDocument>.value(
            _FakeUserProfileDocument_1(
          this,
          Invocation.method(
            #fetchUserProfile,
            [userId],
          ),
        )),
      ) as _i7.Future<_i3.UserProfileDocument>);

  @override
  _i7.Future<void> addUserProfile(
    String? userId,
    String? name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #addUserProfile,
          [
            userId,
            name,
          ],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}

/// A class which mocks [UserFollowRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserFollowRepository extends _i1.Mock
    implements _i8.UserFollowRepository {
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
  _i7.Future<_i4.UserFollowCountDocument> fetchUserFollowCount(
          String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchUserFollowCount,
          [userId],
        ),
        returnValue: _i7.Future<_i4.UserFollowCountDocument>.value(
            _FakeUserFollowCountDocument_2(
          this,
          Invocation.method(
            #fetchUserFollowCount,
            [userId],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i4.UserFollowCountDocument>.value(
                _FakeUserFollowCountDocument_2(
          this,
          Invocation.method(
            #fetchUserFollowCount,
            [userId],
          ),
        )),
      ) as _i7.Future<_i4.UserFollowCountDocument>);

  @override
  _i7.Future<void> follow(
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
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> unfollow(
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
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<bool> isFollowing(
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
        returnValue: _i7.Future<bool>.value(false),
        returnValueForMissingStub: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);

  @override
  _i7.Future<void> addUserFollowCount(String? userId) => (super.noSuchMethod(
        Invocation.method(
          #addUserFollowCount,
          [userId],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<List<String>> fetchAllFollowingIdList(String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchAllFollowingIdList,
          [userId],
        ),
        returnValue: _i7.Future<List<String>>.value(<String>[]),
        returnValueForMissingStub: _i7.Future<List<String>>.value(<String>[]),
      ) as _i7.Future<List<String>>);

  @override
  _i7.Future<_i5.UserIdListState> fetchFollowingIdListFirst(String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchFollowingIdListFirst,
          [userId],
        ),
        returnValue:
            _i7.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchFollowingIdListFirst,
            [userId],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchFollowingIdListFirst,
            [userId],
          ),
        )),
      ) as _i7.Future<_i5.UserIdListState>);

  @override
  _i7.Future<_i5.UserIdListState> fetchFollowingIdListMore(
    String? userId,
    _i2.QueryDocumentSnapshot<Object?>? lastReadQueryDocumentSnapshot,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchFollowingIdListMore,
          [
            userId,
            lastReadQueryDocumentSnapshot,
          ],
        ),
        returnValue:
            _i7.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchFollowingIdListMore,
            [
              userId,
              lastReadQueryDocumentSnapshot,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchFollowingIdListMore,
            [
              userId,
              lastReadQueryDocumentSnapshot,
            ],
          ),
        )),
      ) as _i7.Future<_i5.UserIdListState>);

  @override
  _i7.Future<_i5.UserIdListState> fetchFollowerIdListFirst(String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchFollowerIdListFirst,
          [userId],
        ),
        returnValue:
            _i7.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchFollowerIdListFirst,
            [userId],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchFollowerIdListFirst,
            [userId],
          ),
        )),
      ) as _i7.Future<_i5.UserIdListState>);

  @override
  _i7.Future<_i5.UserIdListState> fetchFollowerIdListMore(
    String? userId,
    _i2.QueryDocumentSnapshot<Object?>? lastReadQueryDocumentSnapshot,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchFollowerIdListMore,
          [
            userId,
            lastReadQueryDocumentSnapshot,
          ],
        ),
        returnValue:
            _i7.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchFollowerIdListMore,
            [
              userId,
              lastReadQueryDocumentSnapshot,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserIdListState>.value(_FakeUserIdListState_3(
          this,
          Invocation.method(
            #fetchFollowerIdListMore,
            [
              userId,
              lastReadQueryDocumentSnapshot,
            ],
          ),
        )),
      ) as _i7.Future<_i5.UserIdListState>);
}
