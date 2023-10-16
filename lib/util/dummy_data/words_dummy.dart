import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addWordsToFirestore() async {
  for (final wordId in words.keys) {
    await FirebaseFirestore.instance
        .collection('Words')
        .doc(wordId)
        .set(words[wordId]!);
  }
}

final words = {
  'word1': {
    'word': '友情',
    'reading': 'ゆうじょう',
    'initialLetter': 'ゆ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word2': {
    'word': '愛',
    'reading': 'あい',
    'initialLetter': 'あ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word3': {
    'word': '失敗',
    'reading': 'しっぱい',
    'initialLetter': 'し',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word4': {
    'word': '成功',
    'reading': 'せいこう',
    'initialLetter': 'せ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word5': {
    'word': '自由',
    'reading': 'じゆう',
    'initialLetter': 'じ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word6': {
    'word': '平和',
    'reading': 'へいわ',
    'initialLetter': 'へ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word7': {
    'word': '冒険',
    'reading': 'ぼうけん',
    'initialLetter': 'ぼ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word8': {
    'word': '夢',
    'reading': 'ゆめ',
    'initialLetter': 'ゆ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word9': {
    'word': '希望',
    'reading': 'きぼう',
    'initialLetter': 'き',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word10': {
    'word': '勇気',
    'reading': 'ゆうき',
    'initialLetter': 'ゆ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word11': {
    'word': '哲学',
    'reading': 'てつがく',
    'initialLetter': 'て',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word12': {
    'word': '信仰',
    'reading': 'しんこう',
    'initialLetter': 'し',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word13': {
    'word': '真実',
    'reading': 'しんじつ',
    'initialLetter': 'し',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word14': {
    'word': '勤勉',
    'reading': 'きんべん',
    'initialLetter': 'き',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word15': {
    'word': '情熱',
    'reading': 'じょうねつ',
    'initialLetter': 'じ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word16': {
    'word': '悲しみ',
    'reading': 'かなしみ',
    'initialLetter': 'か',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word17': {
    'word': '喜び',
    'reading': 'よろこび',
    'initialLetter': 'よ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word18': {
    'word': '恐怖',
    'reading': 'きょうふ',
    'initialLetter': 'き',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word19': {
    'word': '勝利',
    'reading': 'しょうり',
    'initialLetter': 'し',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word20': {
    'word': '敗北',
    'reading': 'はいぼく',
    'initialLetter': 'は',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word21': {
    'word': '希望',
    'reading': 'きぼう',
    'initialLetter': 'き',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word22': {
    'word': '絶望',
    'reading': 'ぜつぼう',
    'initialLetter': 'ぜ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word23': {
    'word': '自己',
    'reading': 'じこ',
    'initialLetter': 'じ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word24': {
    'word': '他者',
    'reading': 'たしゃ',
    'initialLetter': 'た',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word25': {
    'word': '可能性',
    'reading': 'かのうせい',
    'initialLetter': 'か',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word26': {
    'word': '限界',
    'reading': 'げんかい',
    'initialLetter': 'げ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word27': {
    'word': '平等',
    'reading': 'びょうどう',
    'initialLetter': 'び',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word28': {
    'word': '差別',
    'reading': 'さべつ',
    'initialLetter': 'さ',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word29': {
    'word': '運命',
    'reading': 'うんめい',
    'initialLetter': 'う',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
  'word30': {
    'word': '信頼',
    'reading': 'しんらい',
    'initialLetter': 'し',
    'createdAt': Timestamp.now(),
    'updatedAt': Timestamp.now(),
  },
};
