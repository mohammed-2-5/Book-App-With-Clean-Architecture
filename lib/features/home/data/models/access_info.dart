import 'package:booklyapp/features/home/data/models/pdf.dart';

import 'epub.dart';

class AccessInfo {
  AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });
  late final String? country;
  late final String? viewability;
  late final bool? embeddable;
  late final bool? publicDomain;
  late final String? textToSpeechPermission;
  late final Epub? epub;
  late final Pdf? pdf;
  late final String? webReaderLink;
  late final String? accessViewStatus;
  late final bool? quoteSharingAllowed;

  AccessInfo.fromJson(Map<String, dynamic> json){
    country = json['country'];
    viewability = json['viewability'];
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission'];
    epub = Epub.fromJson(json['epub']);
    pdf = Pdf.fromJson(json['pdf']);
    webReaderLink = json['webReaderLink'];
    accessViewStatus = json['accessViewStatus'];
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }


}



