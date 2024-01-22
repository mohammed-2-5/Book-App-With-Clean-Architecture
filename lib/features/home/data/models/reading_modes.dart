class ReadingModes {
  ReadingModes({
    required this.text,
    required this.image,
  });
  late final bool text;
  late final bool image;

  ReadingModes.fromJson(Map<String, dynamic> json){
    text = json['text'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['text'] = text;
    data['image'] = image;
    return data;
  }
}