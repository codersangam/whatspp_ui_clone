part of 'calls_imports.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
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
                backgroundColor: MyColors.tabColor,
                child: const Icon(Icons.link, color: MyColors.white, size: 30)
                    .rotate(-40),
              ),
              14.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Create call link".text.lg.white.make(),
                  8.heightBox,
                  "Share a link for your WhatsApp call"
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
