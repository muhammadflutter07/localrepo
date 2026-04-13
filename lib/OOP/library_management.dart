class Book {
  int? id;
  String? title;
  String? author;
  bool isissued = false;
}

class Member {
  int? id;
  String? name;
  List<Book> issuedBooks = [];
}

class Library {
  List<Book> books = [];
  List<Member> members = [];

  void addbook(Book book) {
    books.add(book);
  }

  void addmember(Member member) {
    members.add(member);
  }

  void displayinfo() {
    print('books in library:');
    for (Book book in books) {
      print(
        'id: ${book.id}, title: ${book.title}, author: ${book.author}, isissued: ${book.isissued}',
      );
    }
    print('members in library:');
    for (Member member in members) {
      print(
        'id: ${member.id}, name: ${member.name}, issuedBooks: ${member.issuedBooks.length}',
      );
    }
  }
}

void main() {
  Library library = Library();

  Book book1 = Book();
  book1.id = 1;
  book1.title = "The Great Gatsby";
  book1.author = "F. Scott Fitzgerald";

  Member member1 = Member();
  member1.id = 1;
  member1.name = "John Doe";

  library.addbook(book1);
  library.addmember(member1);

  library.displayinfo();
}
