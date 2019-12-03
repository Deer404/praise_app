import 'dart:core';

class Sentence {
  List<String> sentenceList;
  String name;
  Sentence(this.name) {
    sentenceList = List<String>();
  }
  List<String> getList() {
    sentenceList.addAll([
      "${name}长得真好看",
      "${name}长得不好看",
      "${name}是真的行",
      "${name}是真的不行",
      "${name}是顶级宦官",
      "${name}是宋伟杰的爹",
      "${name}是憨憨",
    ]);
    return sentenceList;
  }
}
