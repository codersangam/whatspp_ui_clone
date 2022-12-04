part of 'home_imports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  HomeViewModel homeViewModel = HomeViewModel();

  @override
  void initState() {
    homeViewModel.tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    homeViewModel.tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBarBg,
      floatingActionButton: homeViewModel.tabController.index == 1
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: MyColors.tabColor,
              child: const Icon(Icons.message),
            )
          : homeViewModel.tabController.index == 2
              ? FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: MyColors.tabColor,
                  child: const Icon(Icons.photo_camera),
                )
              : homeViewModel.tabController.index == 3
                  ? FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: MyColors.tabColor,
                      child: const Icon(Icons.add_call),
                    )
                  : null,
      body: DefaultTabController(
        length: 4,
        child: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: MyColors.appBarBg,
                  expandedHeight: 40.0,
                  floating: false,
                  automaticallyImplyLeading: false,
                  centerTitle: false,
                  title: "WhatsApp Business"
                      .text
                      .semiBold
                      .color(MyColors.textColor)
                      .make(),
                  actions: [
                    InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onTap: () {},
                      child: const Icon(
                        Icons.photo_camera_outlined,
                        color: MyColors.textColor,
                      ),
                    ).pSymmetric(h: 10),
                    Visibility(
                      visible: homeViewModel.tabController.index != 0,
                      child: InkWell(
                        onTap: () {},
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          Icons.search,
                          color: MyColors.textColor,
                        ),
                      ).pSymmetric(h: 10),
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(
                          cardColor: MyColors.appBarBg,
                          textTheme: const TextTheme(
                              titleSmall: TextStyle(color: MyColors.white))),
                      child: PopupMenuButton(
                        icon: const Icon(
                          Icons.more_vert,
                          color: MyColors.textColor,
                        ),
                        onSelected: (dynamic value) {},
                        itemBuilder: (BuildContext context) {
                          return [
                            const PopupMenuItem(
                              child: Text("Advertise on Facebook"),
                            ),
                            const PopupMenuItem(
                              child: Text("Clear call log"),
                            ),
                            const PopupMenuItem(
                              child: Text("Business Tools"),
                            ),
                            const PopupMenuItem(
                              child: Text("Settings"),
                            ),
                          ];
                        },
                      ),
                    ),
                  ],
                ),
                SliverPersistentHeader(
                  delegate: SliverAppBarDelegate(
                    TabBar(
                      controller: homeViewModel.tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: MyColors.tabColor,
                      labelPadding: const EdgeInsets.symmetric(vertical: 10),
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.store_outlined,
                            color: homeViewModel.tabController.index == 0
                                ? MyColors.tabColor
                                : MyColors.textColor,
                          ),
                        ),
                        Tab(
                          child: "chats"
                              .text
                              .uppercase
                              .lg
                              .color(homeViewModel.tabController.index == 1
                                  ? MyColors.tabColor
                                  : MyColors.textColor)
                              .make(),
                        ),
                        Tab(
                          child: "status"
                              .text
                              .uppercase
                              .lg
                              .color(homeViewModel.tabController.index == 2
                                  ? MyColors.tabColor
                                  : MyColors.textColor)
                              .make(),
                        ),
                        Tab(
                          child: "calls"
                              .text
                              .uppercase
                              .lg
                              .color(homeViewModel.tabController.index == 3
                                  ? MyColors.tabColor
                                  : MyColors.textColor)
                              .make(),
                        ),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: Container(
              color: MyColors.bodyBg,
              child: TabBarView(
                controller: homeViewModel.tabController,
                children: const [
                  MarketPlace(),
                  Chats(),
                  Status(),
                  Calls(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
