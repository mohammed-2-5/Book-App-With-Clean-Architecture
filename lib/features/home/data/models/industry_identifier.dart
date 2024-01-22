class IndustryIdentifiers {
  IndustryIdentifiers({
    required this.type,
    required this.identifier,
  });
  late final String? type;
  late final String? identifier;

  IndustryIdentifiers.fromJson(Map<String, dynamic> json){
    type = json['type']??" ";
    identifier = json['identifier']??" ";
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['identifier'] = identifier;
    return data;
  }
}