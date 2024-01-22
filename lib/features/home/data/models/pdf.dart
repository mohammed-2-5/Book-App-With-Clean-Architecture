class Pdf {
  Pdf({
    required this.isAvailable,
  });
  late final bool isAvailable;

  Pdf.fromJson(Map<String, dynamic> json){
    isAvailable = json['isAvailable'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isAvailable'] = isAvailable;
    return data;
  }
}