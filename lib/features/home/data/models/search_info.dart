class SearchInfo {
  SearchInfo({
    required this.textSnippet,
  });
  late final String textSnippet;

  SearchInfo.fromJson(Map<String, dynamic> json){
    textSnippet = json['textSnippet'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['textSnippet'] = textSnippet;
    return _data;
  }
}
