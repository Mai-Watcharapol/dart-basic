class Book {
  String title;
  String author;
  int pages;
  bool _isRead;

  Book(
      {required this.title,
      required this.author,
      required this.pages,
      bool isRead = false})
      : _isRead = isRead;

  void showDetails() {
    print('Title: $title');
    print('Author: $author');
    print('Pages: $pages');
    print('Read: ${_isRead ? "Yes" : "No"}');
  }

  void markAsRead() {
    _isRead = true;
  }

  void markAsUnread() {
    _isRead = false;
  }

  bool get isRead => _isRead;
}

void main() {

  Book myBook = Book(title: '1984', author: 'George Orwell', pages: 328, isRead: true);

  myBook.showDetails();

  myBook.markAsRead();
  print('Read: ${myBook._isRead ? "Yes" : "No"}');

  //var check = myBook;

  List<int> num = [10, 20, 30, 40];
  num.add(50);
  num.addAll([70, 80]);
  num.insert(1, 25);
  num.insertAll(2, [26, 27, 28]);

  print(num);
}
