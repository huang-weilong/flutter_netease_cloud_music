import 'package:flutter/material.dart';
import 'package:flutter_netease_cloud_music/constants/f_color.dart';
import 'package:flutter_netease_cloud_music/page/discovery_page.dart';
import 'package:flutter_netease_cloud_music/page/drawer_page.dart';
import 'package:flutter_netease_cloud_music/page/mine_page.dart';
import 'package:flutter_netease_cloud_music/widget/sample_layout.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController controller;
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  List<Color> _tabBarBgColor = [Colors.transparent, Colors.white, Colors.white, Colors.white];
  Color _tabBarIconColor = Colors.white;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
    controller.addListener(() {
      setState(() {
        if (controller.index == 0) {
          _tabBarIconColor = Colors.white;
        } else {
          _tabBarIconColor = FColor.all9;
        }
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: DrawerPage(),
      body: SafeArea(
        child: Stack(
          children: [
            TabBarView(
              controller: controller,
              children: <Widget>[
                MinePage(),
                DiscoveryPage(),
                Text('云村'),
                Text('视频'),
              ],
            ),
            Container(
              color: _tabBarBgColor[controller.index],
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _globalKey.currentState.openDrawer();
                    },
                    child: Image.asset('assets/images/public/menu.png', color: _tabBarIconColor),
                  ),
                  TabBarWidget(controller),
                  Image.asset('assets/images/public/search.png', color: _tabBarIconColor),
                ],
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(top: BorderSide(color: FColor.allE, width: 0.5)),
                ),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset('assets/images/public/avatar.jpg', width: 40.0),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('好像爱这个世界啊(Live)'),
                            Text('横划可以切换上下首哦', style: TextStyle(color: FColor.all9, fontSize: 12.0)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 14.0),
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 9.0, right: 7.0),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Image.asset('assets/images/public/play1.png', color: Colors.grey, width: 10.0),
                    ),
                    Image.asset('assets/images/public/menu.png'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TabBarWidget extends StatelessWidget {
  final List<Color> _textSelectColor = [Colors.white, FColor.all3, FColor.all3, FColor.all3];
  final TabController controller;
  TabBarWidget(this.controller);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TabBar(
          controller: controller,
          tabs: [
            Text('我的'),
            Text('发现'),
            Text('云村'),
            Text('视频'),
          ],
          labelColor: _textSelectColor[controller.index],
          labelPadding: const EdgeInsets.all(0.0),
          indicatorColor: Colors.transparent,
          labelStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
