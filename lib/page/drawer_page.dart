import 'package:flutter/material.dart';
import 'package:flutter_netease_cloud_music/constants/f_color.dart';
import 'package:flutter_netease_cloud_music/widget/sample_layout.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(20.0),
                children: [
                  _buildHeader(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildColumnIconAndText('assets/images/drawer/mail.png', '我的消息'),
                        buildColumnIconAndText('assets/images/drawer/buddy.png', '我的好友'),
                        buildColumnIconAndText('assets/images/drawer/homepage.png', '个人主页'),
                        buildColumnIconAndText('assets/images/drawer/dress_up.png', '个性装扮'),
                      ],
                    ),
                  ),
                  Divider(),
                  buildRowTile('assets/images/drawer/idea.png', '创作者中心'),
                  Divider(),
                  buildRowTile(
                    'assets/images/drawer/recording.png',
                    '听歌识曲',
                    trailing: Text('可识别其他app歌曲', style: TextStyle(fontSize: 10.0, color: FColor.all6)),
                  ),
                  buildRowTile('assets/images/drawer/ticket.png', '演出'),
                  buildRowTile('assets/images/drawer/cart.png', '商城'),
                  buildRowTile(
                    'assets/images/drawer/game.png',
                    '游戏推荐',
                    trailing: Text('智能tws99元抢', style: TextStyle(fontSize: 10.0, color: FColor.all6)),
                  ),
                  buildRowTile('assets/images/drawer/location.png', '附件的人'),
                  buildRowTile(
                    'assets/images/drawer/color_ring.png',
                    '口袋彩铃',
                    trailing: Text('七夕超甜浪漫铃声', style: TextStyle(fontSize: 10.0, color: FColor.all6)),
                  ),
                  Divider(),
                  buildRowTile('assets/images/drawer/order.png', '我的订单'),
                  buildRowTile('assets/images/drawer/timing.png', '定时停止播放'),
                  buildRowTile('assets/images/drawer/scan.png', '扫一扫'),
                  buildRowTile('assets/images/drawer/alarm_clock.png', '音乐闹钟'),
                  buildRowTile('assets/images/drawer/cloud.png', '音乐云盘'),
                  buildRowTile('assets/images/drawer/coupon.png', '优惠券'),
                  buildRowTile(
                    'assets/images/drawer/protection.png',
                    '青少年模式',
                    trailing: Text('未开启', style: TextStyle(fontSize: 10.0, color: FColor.all6)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/drawer/night.png'),
                      SizedBox(width: 10.0),
                      Text('夜间模式'),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/drawer/setting.png'),
                      SizedBox(width: 10.0),
                      Text('设置'),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/drawer/quit.png'),
                      SizedBox(width: 10.0),
                      Text('退出'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        ClipOval(child: Image.asset('assets/images/public/avatar.jpg', width: 30.0, fit: BoxFit.cover)),
        SizedBox(width: 8.0),
        Expanded(child: Text('__long')),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            color: FColor.primary,
            shape: StadiumBorder(),
          ),
          child: Row(
            children: [
              Image.asset('assets/images/drawer/sign_in.png', color: Colors.white),
              SizedBox(width: 4.0),
              Text('签到', style: TextStyle(color: Colors.white, fontSize: 12.0)),
            ],
          ),
        )
      ],
    );
  }
}
