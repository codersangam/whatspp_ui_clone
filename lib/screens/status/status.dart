part of 'status_imports.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        10.heightBox,
        InkWell(
          onTap: () {},
          child: Row(
            children: [
              VxCircle(
                radius: 60,
                backgroundColor: Colors.transparent,
                backgroundImage: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://avatars.githubusercontent.com/u/66767187?s=48&v=4",
                  ),
                ),
              ).badge(
                size: 20,
                position: VxBadgePosition.rightBottom,
                color: MyColors.tabColor,
                optionalWidget: const Icon(
                  Icons.add,
                  size: 20,
                  color: MyColors.white,
                ),
              ),
              14.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "My Status".text.lg.white.make(),
                  8.heightBox,
                  "Tap to add status update"
                      .text
                      .color(MyColors.textColor)
                      .make(),
                ],
              ),
            ],
          ).pSymmetric(h: 15, v: 10),
        )
      ],
    );
  }
}
