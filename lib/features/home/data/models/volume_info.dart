
import 'package:booklyapp/features/home/data/models/panelization_summary.dart';
import 'package:booklyapp/features/home/data/models/reading_modes.dart';

import 'image_links.dart';
import 'industry_identifier.dart';

class VolumeInfo {
  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });
    String? title;
    List<String>? authors;
    String? publisher;
    String? publishedDate;
    String? description;
    List<IndustryIdentifiers>? industryIdentifiers;
  late final ReadingModes readingModes;
  late final int pageCount;
  late final String printType;
  late final List<String> categories;
  late final String maturityRating;
  late final bool allowAnonLogging;
  late final String contentVersion;
  late final PanelizationSummary panelizationSummary;
  late final ImageLinks imageLinks;
  late final String language;
  late final String previewLink;
  late final String infoLink;
  late final String canonicalVolumeLink;

  VolumeInfo.fromJson(Map<String, dynamic> json){
    title = json['title']??' ';
    if (json['authors'] != null) {
      authors = List<String>.from(json['authors'].map((item) => item.toString()));
    } else {
      authors = [];
    }
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null && json['industryIdentifiers'] is List) {
      industryIdentifiers = (json['industryIdentifiers'] as List).map((item) => IndustryIdentifiers.fromJson(item as Map<String, dynamic>)).toList();
    } else {
      industryIdentifiers = [];
    }    if (json['readingModes'] != null) {
      readingModes = ReadingModes.fromJson(json['readingModes']);
    } else {
      // handle the case when 'readingModes' is null or doesn't exist, maybe instantiate with default values
      readingModes = ReadingModes(text:false, image: false);
    }
    pageCount = json['pageCount']??0;
    printType = json['printType']??'';
    if (json['categories'] != null) {
      categories = List<String>.from(json['categories'].map((item) => item.toString()));
    } else {
      categories = [];
    }
    maturityRating = json['maturityRating']??'';
    allowAnonLogging = (json['allowAnonLogging'] is bool) ? json['allowAnonLogging'] : false;
    contentVersion = json['contentVersion'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = (json['industryIdentifiers'] as List).map((item) => IndustryIdentifiers.fromJson(item)).toList();
    } else {
      industryIdentifiers = [];
    }
    if (json['imageLinks'] != null) {
      imageLinks = ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>);
    } else {
      // Similar to before, have a method or default constructor for a default object.
      imageLinks = ImageLinks(smallThumbnail: '', thumbnail: ''); // Assuming a default constructor is available.
    }
    language = json['language']?? '';
    previewLink = json['previewLink']?? '';
    infoLink = json['infoLink']?? '';
  canonicalVolumeLink = json['canonicalVolumeLink']??'';
  }


}







