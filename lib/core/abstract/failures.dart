// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Failure {}

class DatabaseFailure extends Failure {
  final String code;
  final String message;
  DatabaseFailure({
    required this.code,
    required this.message,
  });
}
