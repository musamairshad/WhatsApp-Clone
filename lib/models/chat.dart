import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Chat {
  final String id;
  final String name;
  final String picture;
  final String latestTimestamp;
  final String lastChat;

  Chat(
      {required this.name,
      required this.picture,
      required this.latestTimestamp,
      required this.lastChat})
      : id = uuid.v4();
}
