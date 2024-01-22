class Epub {
  Epub({
    required this.isAvailable,
  });
  late final bool isAvailable;

  Epub.fromJson(Map<String, dynamic> json){
    isAvailable = json['isAvailable'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['isAvailable'] = isAvailable;
    return _data;
  }
}