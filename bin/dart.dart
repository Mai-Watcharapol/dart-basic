
import 'dart:convert';
import 'package:dart/BookOfApple.dart';
import 'package:dart/User.dart';
import 'package:dart/Book.dart';

void main(List<String> arguments) {

  String jsonString = '{"name": "Alice", "age": 25}';

  Map<String, dynamic> userMap = jsonDecode(jsonString);
  var data = userMap.entries;
  print(data);

  User user = User.fromJson(userMap);
  print('Name: ${user.name}, Age: ${user.age}');

  String encodedJson = jsonEncode(user.toJson());
  print('Encoded JSON: $encodedJson');

  //////////////////////////////////////////////


  Book myBook = Book(title: '1984', author: 'George Orwell', pages: 328);
  myBook.showDetails();

  var check = myBook.isRead;
  print("isRead field: $check");

  myBook.markAsRead();
  print('Read: ${myBook.isRead ? "Yes" : "No"}');


  //////////////////////////////////////////////

  BookOfApple appleBook = BookOfApple(
      title: 'Apple Story', author: 'John Appleseed', pages: 200, star: 5);

  appleBook.showDetails();

  appleBook.markAsStar(10);
  print('Updated Star: ${appleBook.showStar}');

}
