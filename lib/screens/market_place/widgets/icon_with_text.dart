part of 'widget_imports.dart';

class IconWithText extends StatelessWidget {
  const IconWithText({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Icon(
            icon,
            color: MyColors.textColor,
            size: 30,
          ),
          20.widthBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title.text.white.make(),
              5.heightBox,
              subTitle.text.color(MyColors.textColor).make(),
            ],
          ),
        ],
      ).pSymmetric(h: 25, v: 20),
    );
  }
}
