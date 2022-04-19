import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/pages/dashboard_page.dart';
import 'package:flutter_facebook_clone/pages/post_page.dart';
import 'package:flutter_facebook_clone/widgets/app_bar_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'more_page.dart';
import 'notification_page.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final TrackingScrollController scrollController = TrackingScrollController();
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                PreferredSize(
                  preferredSize: const Size.fromHeight(50.0),
                  child: SliverAppBar(
                    pinned: false,
                    brightness: Brightness.light,
                    backgroundColor: Colors.white,
                    title: Text(
                      widget.title,
                      style: const TextStyle(
                          color: Color(0xFF1777F2),
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1.2),
                    ),
                    centerTitle: false,
                    floating: true,
                    actions: <Widget>[
                      AppBarButton(
                        icon: Icons.search,
                        size: 25.0,
                        onPressed: () {},
                      ),
                      AppBarButton(
                        icon: MdiIcons.facebookMessenger,
                        size: 25.0,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(TabBar(
                    controller: tabController,
                    labelColor: const Color(0xFF1777F2),
                    unselectedLabelColor: Colors.grey,
                    tabs: const <Widget>[
                      Tab(
                        icon: Icon(
                          Icons.home,
                          size: 25.0,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.ondemand_video,
                          size: 25.0,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          MdiIcons.bellOutline,
                          size: 25.0,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.menu,
                          size: 25.0,
                        ),
                      ),
                    ],
                  )),
                  pinned: true,
                )
              ];
            },
            body: TabBarView(
              controller: tabController,
              children: const <Widget>[
                DashboardPage(),
                PostPage(),
                NotificationPage(),
                MorePage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;
  _SliverAppBarDelegate(this._tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
