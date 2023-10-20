import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'definition_id_list_state.freezed.dart';

@freezed
class DefinitionIdListState with _$DefinitionIdListState {
  const factory DefinitionIdListState({
    required List<String> definitionIdList,

    /// 最後に読み取られたQueryDocumentSnapshot
    /// これがnullの場合、1件もDefinitionIdを取得していない（[definitionIdList]が空）
    required QueryDocumentSnapshot? lastReadQueryDocumentSnapshot,
    required bool hasMore,
  }) = _DefinitionIdListState;
}
