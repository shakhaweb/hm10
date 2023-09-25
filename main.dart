class Book {
  final String author;
  final int year;
  final String title;

  Book({required this.author, required this.year, required this.title});

  static String getInfo(Book book) {
    return "Author: ${book.author}, Year: ${book.year}, Title: ${book.title}";
  }
}

class Student {
  final String name;
  final int age;
  final List<String> subjects = [];
  final List<int> grades = [];

  Student({ required this.name,required this.age});

  void addSubject(String subject) {
    subjects.add(subject);
  }

  void removeSubject(String subject) {
    subjects.remove(subject);
  }

  String getInfo() {
    return "Name: $name, Age: $age, Subjects: $subjects";
  }

  double getAverageGrade() {
    if (grades.isEmpty) {
      return 0.0;
    }
    double sum = 0;
    for (var grade in grades) {
      sum += grade;
    }
    return sum / grades.length;
  }

  bool hasSubject(String subject) {
    return subjects.contains(subject);
  }
}

void main() {
  var book = Book(author: "John Doe", year: 2023, title: "The Book Title");

  var student = Student( name: "Alice", age: 20);

  student.addSubject("Math");
  student.addSubject("Science");
  student.grades.addAll([90, 85]);

  var bookInfo = Book.getInfo(book);
  print("Book Info: $bookInfo");

  var studentInfo = student.getInfo();
  var averageGrade = student.getAverageGrade();
  print("Student Info: $studentInfo");
  print("Average Grade: $averageGrade");

  var hasMath = student.hasSubject("Math");
  var hasHistory = student.hasSubject("History");
  print("Has Math: $hasMath");
  print("Has History: $hasHistory");
}
