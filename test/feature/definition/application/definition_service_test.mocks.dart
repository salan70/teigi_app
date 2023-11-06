// Mocks generated by Mockito 5.4.2 from annotations
// in teigi_app/test/feature/definition/application/definition_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:cloud_firestore/cloud_firestore.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:riverpod_annotation/riverpod_annotation.dart' as _i9;
import 'package:teigi_app/feature/definition/domain/definition_for_write.dart'
    as _i7;
import 'package:teigi_app/feature/definition/domain/definition_id_list_state.dart'
    as _i3;
import 'package:teigi_app/feature/definition/repository/definition_repository.dart'
    as _i5;
import 'package:teigi_app/feature/definition/repository/entity/definition_document.dart'
    as _i4;

import 'definition_service_test.dart' as _i8;

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

/// A class which mocks [DefinitionRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockDefinitionRepository extends _i1.Mock
    implements _i5.DefinitionRepository {
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
  _i6.Future<_i3.DefinitionIdListState> fetchHomeRecommendDefinitionIdListFirst(
          List<String>? mutedUserIdList) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchHomeRecommendDefinitionIdListFirst,
          [mutedUserIdList],
        ),
        returnValue: _i6.Future<_i3.DefinitionIdListState>.value(
            _FakeDefinitionIdListState_1(
          this,
          Invocation.method(
            #fetchHomeRecommendDefinitionIdListFirst,
            [mutedUserIdList],
          ),
        )),
        returnValueForMissingStub: _i6.Future<_i3.DefinitionIdListState>.value(
            _FakeDefinitionIdListState_1(
          this,
          Invocation.method(
            #fetchHomeRecommendDefinitionIdListFirst,
            [mutedUserIdList],
          ),
        )),
      ) as _i6.Future<_i3.DefinitionIdListState>);

  @override
  _i6.Future<_i3.DefinitionIdListState> fetchHomeRecommendDefinitionIdListMore(
    List<String>? mutedUserIdList,
    _i2.QueryDocumentSnapshot<Object?>? lastReadQueryDocumentSnapshot,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchHomeRecommendDefinitionIdListMore,
          [
            mutedUserIdList,
            lastReadQueryDocumentSnapshot,
          ],
        ),
        returnValue: _i6.Future<_i3.DefinitionIdListState>.value(
            _FakeDefinitionIdListState_1(
          this,
          Invocation.method(
            #fetchHomeRecommendDefinitionIdListMore,
            [
              mutedUserIdList,
              lastReadQueryDocumentSnapshot,
            ],
          ),
        )),
        returnValueForMissingStub: _i6.Future<_i3.DefinitionIdListState>.value(
            _FakeDefinitionIdListState_1(
          this,
          Invocation.method(
            #fetchHomeRecommendDefinitionIdListMore,
            [
              mutedUserIdList,
              lastReadQueryDocumentSnapshot,
            ],
          ),
        )),
      ) as _i6.Future<_i3.DefinitionIdListState>);

  @override
  _i6.Future<_i3.DefinitionIdListState> fetchHomeFollowingDefinitionIdListFirst(
          List<String>? targetUserIdList) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchHomeFollowingDefinitionIdListFirst,
          [targetUserIdList],
        ),
        returnValue: _i6.Future<_i3.DefinitionIdListState>.value(
            _FakeDefinitionIdListState_1(
          this,
          Invocation.method(
            #fetchHomeFollowingDefinitionIdListFirst,
            [targetUserIdList],
          ),
        )),
        returnValueForMissingStub: _i6.Future<_i3.DefinitionIdListState>.value(
            _FakeDefinitionIdListState_1(
          this,
          Invocation.method(
            #fetchHomeFollowingDefinitionIdListFirst,
            [targetUserIdList],
          ),
        )),
      ) as _i6.Future<_i3.DefinitionIdListState>);

  @override
  _i6.Future<_i3.DefinitionIdListState> fetchHomeFollowingDefinitionIdListMore(
    List<String>? targetUserIdList,
    _i2.QueryDocumentSnapshot<Object?>? lastReadQueryDocumentSnapshot,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchHomeFollowingDefinitionIdListMore,
          [
            targetUserIdList,
            lastReadQueryDocumentSnapshot,
          ],
        ),
        returnValue: _i6.Future<_i3.DefinitionIdListState>.value(
            _FakeDefinitionIdListState_1(
          this,
          Invocation.method(
            #fetchHomeFollowingDefinitionIdListMore,
            [
              targetUserIdList,
              lastReadQueryDocumentSnapshot,
            ],
          ),
        )),
        returnValueForMissingStub: _i6.Future<_i3.DefinitionIdListState>.value(
            _FakeDefinitionIdListState_1(
          this,
          Invocation.method(
            #fetchHomeFollowingDefinitionIdListMore,
            [
              targetUserIdList,
              lastReadQueryDocumentSnapshot,
            ],
          ),
        )),
      ) as _i6.Future<_i3.DefinitionIdListState>);

  @override
  _i6.Future<_i4.DefinitionDocument> fetchDefinition(String? definitionId) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchDefinition,
          [definitionId],
        ),
        returnValue:
            _i6.Future<_i4.DefinitionDocument>.value(_FakeDefinitionDocument_2(
          this,
          Invocation.method(
            #fetchDefinition,
            [definitionId],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i4.DefinitionDocument>.value(_FakeDefinitionDocument_2(
          this,
          Invocation.method(
            #fetchDefinition,
            [definitionId],
          ),
        )),
      ) as _i6.Future<_i4.DefinitionDocument>);

  @override
  _i6.Future<void> createDefinitionAndMaybeWord(
    String? authorId,
    String? existingWordId,
    _i7.DefinitionForWrite? definitionForWrite,
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
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> updateDefinitionAndMaybeCreateWord(
    String? existingWordId,
    _i7.DefinitionForWrite? definitionForWrite,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateDefinitionAndMaybeCreateWord,
          [
            existingWordId,
            definitionForWrite,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> likeDefinition(
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
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> unlikeDefinition(
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
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<bool> isLikedByUser(
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
        returnValue: _i6.Future<bool>.value(false),
        returnValueForMissingStub: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
}

/// A class which mocks [Listener].
///
/// See the documentation for Mockito's code generation for more information.
class MockListener extends _i1.Mock
    implements _i8.Listener<_i9.AsyncValue<void>> {
  @override
  void call(
    _i9.AsyncValue<void>? previous,
    _i9.AsyncValue<void>? next,
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
