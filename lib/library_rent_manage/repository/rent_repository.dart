import 'package:flutter_beginner/library_rent_manage/model/member.dart';

import '../model/rent.dart';

abstract interface class BookRepositoy {
  Future<Rent> insert(Rent book);
  Future<Rent> update(Rent book);
  Future<List<Rent>> findAll();
  Future<List<Rent>> findAbyId(int id);
}
