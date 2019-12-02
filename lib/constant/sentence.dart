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
      "${name}憨憨",
      "${name}",
      "${name}",
      "${name}",
      "${name}",
    ]);
    return sentenceList;
  }
}
