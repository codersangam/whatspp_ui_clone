part of 'market_place_imports.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({Key? key}) : super(key: key);

  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.heightBox,
        const IconWithText(
          title: "Business Profile",
          subTitle: "Manage address, hours, and websites",
          icon: Icons.store,
        ),
        const IconWithText(
          title: "Catalogue",
          subTitle: "Show products and services",
          icon: Icons.apps,
        ),
        10.heightBox,
        Divider(
          color: MyColors.textColor.withOpacity(0.4),
        ),
        20.heightBox,
        "Reach more customers"
            .text
            .color(MyColors.tabColor)
            .make()
            .pSymmetric(h: 25),
        20.heightBox,
        const IconWithText(
          title: "Advertise on Facebook",
          subTitle: "Create ads that lead to WhatsApp",
          icon: Icons.campaign,
        ),
        const IconWithText(
          title: "Facebook & Instagram",
          subTitle: "Add WhatsApp to your accounts",
          icon: Icons.link,
        ),
        10.heightBox,
        Divider(
          color: MyColors.textColor.withOpacity(0.4),
        ),
        20.heightBox,
        "Messaging".text.color(MyColors.tabColor).make().pSymmetric(h: 25),
        20.heightBox,
        const IconWithText(
          title: "Greeting message",
          subTitle: "Welcome new customers automatically",
          icon: Icons.message,
        ),
        const IconWithText(
          title: "Away message",
          subTitle: "Reply automatically when you're away",
          icon: Icons.beach_access,
        ),
        const IconWithText(
          title: "Quck replies",
          subTitle: "Reuse frequent messages",
          icon: Icons.bolt,
        ),
      ],
    ).scrollVertical();
  }
}
