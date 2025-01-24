import 'Book.dart';

class BookOfApple extends Book {
  int _star;

  BookOfApple(
      {required super.title, required super.author, required super.pages, int star = 0})
      : _star = star;

  void markAsStar(int amount) {
    _star = amount;
  }

  int get showStar => _star;

  @override
  void showDetails() {
    super.showDetails();
    print('Star: $_star');
  }

}
