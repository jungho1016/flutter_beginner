import '../model/member.dart';

abstract interface class MemberRepositoy {
  // List<Member> members = [];
  Future<Member> insert(Member member);
  Future<Member> update(Member member);
  Future<List<Member>> findAll();
  Future<List<Member>> findAbyId(int id);

  // Member member = Member(
  //     memberId: 0,
  //     id: '0',
  //     joinDay: DateTime(2023 - 06 - 01),
  //     name: '김새싹',
  //     address: '서울특별시 영등포구 선유로9길 30 106동 청년취업사관학교 영등포캠퍼스',
  //     phoneNumber: '02-3667-7304',
  //     birthday: DateTime(2000 - 01 - 01));
}
