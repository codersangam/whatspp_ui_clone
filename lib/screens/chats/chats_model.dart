import 'package:whatsapp_ui/constants/my_images.dart';

class ChatsModel {
  String name;
  String imagePath;
  DateTime chatLastDate;
  String chatLastMsg;
  ChatsModel({
    required this.name,
    required this.imagePath,
    required this.chatLastDate,
    required this.chatLastMsg,
  });

  static List<ChatsModel> chatsModelList = [
    ChatsModel(
      name: "Divya",
      imagePath: MyImages.divya,
      chatLastDate: DateTime(2022, 12, 03),
      chatLastMsg: "Bye Bye",
    ),
    ChatsModel(
      name: "Priya",
      imagePath: MyImages.priya,
      chatLastDate: DateTime(2022, 12, 02),
      chatLastMsg: "See You",
    ),
    ChatsModel(
      name: "Sundar",
      imagePath: MyImages.sundar,
      chatLastDate: DateTime(2022, 11, 22),
      chatLastMsg: ":)",
    ),
    ChatsModel(
      name: "Kedar",
      imagePath: MyImages.kedar,
      chatLastDate: DateTime(2022, 11, 09),
      chatLastMsg: "Huss Hunxa",
    ),
    ChatsModel(
      name: "Mahesh",
      imagePath: MyImages.mahesh,
      chatLastDate: DateTime(2022, 11, 09),
      chatLastMsg: "Okie",
    ),
    ChatsModel(
      name: "Sushi",
      imagePath: MyImages.sushi,
      chatLastDate: DateTime(2022, 10, 22),
      chatLastMsg: "I love you too",
    ),
    ChatsModel(
      name: "Alex",
      imagePath: MyImages.alex,
      chatLastDate: DateTime(2022, 10, 12),
      chatLastMsg: "Thanks Mate",
    ),
    ChatsModel(
      name: "Deepthi",
      imagePath: MyImages.deepthi,
      chatLastDate: DateTime(2022, 10, 03),
      chatLastMsg: "TC",
    ),
    ChatsModel(
      name: "Nisha",
      imagePath: MyImages.nisha,
      chatLastDate: DateTime(2022, 09, 02),
      chatLastMsg: "Bye",
    ),
    ChatsModel(
      name: "Rina",
      imagePath: MyImages.rina,
      chatLastDate: DateTime(2022, 08, 28),
      chatLastMsg: "GN TC",
    ),
  ];
}
