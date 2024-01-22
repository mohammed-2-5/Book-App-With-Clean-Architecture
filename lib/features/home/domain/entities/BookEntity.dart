
import 'package:hive/hive.dart';
part 'BookEntity.g.dart';


@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String? imageName;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String? authorName;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rate;

  BookEntity(
      {required this.imageName,
        required this.title,
        required this.authorName,
        required this.price,
        required this.rate,
        required this.bookId});
}