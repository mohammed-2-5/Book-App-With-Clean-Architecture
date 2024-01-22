class SaleInfo {
  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,

  });
   late final String? country;
   late final String? saleability;
  late final bool isEbook;


  SaleInfo.fromJson(Map<String, dynamic> json){
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];

  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['country'] = country;
    data['saleability'] = saleability;
    data['isEbook'] = isEbook;

    return data;
  }
}

