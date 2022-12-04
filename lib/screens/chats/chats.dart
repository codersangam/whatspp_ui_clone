part of 'chats_imports.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: ChatsModel.chatsModelList.length,
      separatorBuilder: (context, index) => const SizedBox(height: 5),
      itemBuilder: (context, index) {
        var data = ChatsModel.chatsModelList[index];
        return InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              VxCircle(
                radius: 60,
                backgroundColor: Colors.transparent,
                backgroundImage: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    data.imagePath,
                  ),
                ),
              ),
              10.widthBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      data.name.text.lg.white.make(),
                      8.heightBox,
                      Row(
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: MyColors.tickColor,
                            size: 16,
                          ),
                          6.widthBox,
                          data.chatLastMsg.text
                              .color(MyColors.textColor)
                              .make(),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      data.chatLastDate
                          .timeAgo()
                          .text
                          .color(MyColors.textColor)
                          .make(),
                      8.heightBox,
                    ],
                  ),
                ],
              ).expand()
            ],
          ).pSymmetric(h: 15, v: 10),
        );
      },
    ).pOnly(top: 10);
  }
}
