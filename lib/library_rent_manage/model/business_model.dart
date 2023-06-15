import 'package:intl/intl.dart';

class BusinessModel {
  late DateTime borrowDate;
  late DateTime returnDate;

  int maxExtensions = 1;
  int extensionsUsed = 0;

  void borrowBook(bool rentPossible) {
    if (rentPossible == true) {
      borrowDate = DateTime.now();
      returnDate = borrowDate.add(const Duration(days: 14));
      print('도서를 대출하였습니다.');
      print('대출일: ${DateFormat('yyyy-MM-dd').format(borrowDate)}');
      print('반납일: ${DateFormat('yyyy-MM-dd').format(returnDate)}');
    } else {
      print('이미 도서를 대출 중입니다.');
    }
  }

  void returnBook() {
    print('도서를 반납하였습니다.');
    print('대출일: ${DateFormat('yyyy-MM-dd').format(borrowDate)}');
    print('반납일: ${DateFormat('yyyy-MM-dd').format(returnDate)}');
    borrowDate = DateTime(0);
    returnDate = DateTime(0);
    extensionsUsed = 0;
  }

  void extendLoan() {
    if (extensionsUsed < maxExtensions) {
      returnDate = returnDate.add(const Duration(days: 14));
      extensionsUsed++;
      print('대출 기간이 연장되었습니다.');
      print('연장 후 반납일: ${DateFormat('yyyy-MM-dd').format(returnDate)}');
      print('남은 연장 횟수: ${maxExtensions - extensionsUsed}');
    } else {
      print('더 이상 연장할 수 없습니다.');
    }
  }
}
