import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_netease_cloud_music/constants/f_color.dart';
import 'dart:math' as m;

class CloudVillagePage extends StatefulWidget {
  @override
  _CloudVillagePageState createState() => _CloudVillagePageState();
}

class _CloudVillagePageState extends State<CloudVillagePage> {
  List<Map<String, String>> square1 = [
    {
      'coverImg': 'assets/images/cover/cover1.png',
      'title': '华晨宇在歌手2018改编的《孩子》，原作西楼，之前就喜欢这首歌，当听到他说这有点像《烟火里的尘埃》的续集后',
      'name': '月落烟yu',
      'like': '74',
      'avatarImg': 'assets/images/cover/cover1.png',
    },
    {
      'coverImg': 'assets/images/cover/cover2.png',
      'title': '借我十年，借我亡命天涯的勇敢',
      'name': 'Berlin柏林-',
      'like': '4259',
      'avatarImg': 'assets/images/cover/cover2.png',
    },
    {
      'coverImg': 'assets/images/cover/cover3.png',
      'title': '【你听过原版《起风了》吗】',
      'name': '九围妖狐',
      'like': '1353',
      'avatarImg': 'assets/images/cover/cover3.png',
    },
    {
      'coverImg': 'assets/images/cover/cover4.png',
      'title': '一些比较短 看到后心情会变好的句子。',
      'name': '与银河对视',
      'like': '3248',
      'avatarImg': 'assets/images/cover/cover4.png',
    },
  ];

  List<Map<String, String>> square2 = [
    {
      'coverImg': 'assets/images/cover/cover5.png',
      'title': '这首老歌好听吗？这是小阿七翻唱的一首老歌[相思]',
      'name': '张大哒2001',
      'like': '1466',
      'avatarImg': 'assets/images/cover/cover5.png',
    },
    {
      'coverImg': 'assets/images/cover/cover6.png',
      'title': '许嵩今年第一首新歌《雨幕》',
      'name': '鹿军Manito',
      'like': '31',
      'avatarImg': 'assets/images/cover/cover6.png',
    },
    {
      'coverImg': 'assets/images/cover/cover7.png',
      'title': '终极一班主题曲《够爱》',
      'name': 'ReaClark',
      'like': '678',
      'avatarImg': 'assets/images/cover/cover7.png',
    },
    {
      'coverImg': 'assets/images/cover/cover8.png',
      'title': '记忆中也有一个当时觉得不可或缺的人吧',
      'name': '于彤-T',
      'like': '1.8万',
      'avatarImg': 'assets/images/cover/cover8.png',
    },
  ];

  List<Map<String, String>> recommendList = [
    {
      'avatarPath': 'assets/images/cover/cover9.png',
      'name': '鱿小鱼',
      'fans': '492.5万',
      'dynamic': '最近跟导师经常去外地做调研\n隔三天没见老韩 我都丧丧的\n我会不会太粘人了',
      'mark': '音乐人：鱿小鱼',
    },
    {
      'avatarPath': 'assets/images/cover/cover10.png',
      'name': 'TaylorSwift',
      'fans': '417.8万',
      'dynamic': 'The video for cardigan "cabin in candlelight" version is out now using new behind-the-scenes footage from ...',
      'mark': '美国创作型歌手',
    },
    {
      'avatarPath': 'assets/images/cover/cover11.png',
      'name': '是你的垚_本人',
      'fans': '99.5万',
      'dynamic': '认真做音乐 感同身受 一路遥远 秉承初心 我是垚垚',
      'mark': '音乐人：是你的垚',
    },
    {
      'avatarPath': 'assets/images/cover/cover12.png',
      'name': '买辣椒也用券',
      'fans': '97.8万',
      'dynamic': '衣服眼熟吗 没错又是库存hhh',
      'mark': '音乐人：买辣椒也用券',
    },
    {
      'avatarPath': 'assets/images/cover/cover8.png',
      'name': '情感文字君',
      'fans': '43.9万',
      'dynamic': '“表白就有失败的可能，那我不表白，我就永远不会失败”',
      'mark': '华语|流行|民谣歌单达人',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70.0, left: 80.0, right: 80.0),
              decoration: BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(color: FColor.allC, width: 0.5))),
              child: TabBar(
                indicatorColor: FColor.primary,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: FColor.primary,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: FColor.all6,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
                labelPadding: EdgeInsets.only(bottom: 6.0),
                tabs: <Widget>[
                  Text('广场'),
                  Text('关注'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(6.0, 6.0, 6.0, 54.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                                children: square1
                                    .map((e) => _GCard(
                                        coverImg: e['coverImg'],
                                        title: e['title'],
                                        name: e['name'],
                                        like: e['like'],
                                        avatarImg: e['avatarImg']))
                                    .toList()),
                          ),
                          Expanded(
                            child: Column(
                                children: square2
                                    .map((e) => _GCard(
                                        coverImg: e['coverImg'],
                                        title: e['title'],
                                        name: e['name'],
                                        like: e['like'],
                                        avatarImg: e['avatarImg']))
                                    .toList()),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListView(
                    padding: const EdgeInsets.only(top: 6.0, bottom: 54.0),
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 6.0, bottom: 6.0),
                        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: FColor.allD, width: 0.5))),
                        child: Row(
                          children: [
                            _buildAttention('assets/images/cover/cover1.png', '我的云圈'),
                            _buildAttention('assets/images/cover/cover2.png', 'HugeTerry'),
                            _buildAttention('assets/images/cover/cover3.png', 'Mr-Joke'),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('你可能感兴趣的人', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                border: Border.all(color: FColor.allE),
                              ),
                              child: Text('查看更多', style: TextStyle(fontSize: 13.0)),
                            )
                          ],
                        ),
                      ),
                      ...recommendList.map(
                        (e) => _TCard(
                          avatarPath: e['avatarPath'],
                          name: e['name'],
                          fans: e['fans'],
                          dynamic: e['dynamic'],
                          mark: e['mark'],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAttention(String iconPath, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ClipOval(child: Image.asset(iconPath, width: 50.0)),
          ),
          Text(text, style: TextStyle(fontSize: 12.0)),
        ],
      ),
    );
  }
}

// “广场”卡片布局
class _GCard extends StatelessWidget {
  final String coverImg; // 封面图
  final String title; // 标题
  final String name; // 名字
  final String like; // 赞
  final String avatarImg; // 头像

  const _GCard({@required this.coverImg, @required this.title, @required this.name, @required this.like, @required this.avatarImg});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [BoxShadow(color: FColor.allD, blurRadius: 3.0, offset: Offset(0.0, 0.0))],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Column(
          children: [
            Image.asset(
              coverImg,
              width: MediaQuery.of(context).size.width / 2,
              height: (m.Random.secure().nextDouble() * 50).floor() + 120.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
              child: Text(title, style: TextStyle(fontSize: 13.0), maxLines: 2, overflow: TextOverflow.ellipsis),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipOval(child: Image.asset(avatarImg, width: 14.0)),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Text(name, style: TextStyle(color: FColor.all9, fontSize: 12.0)),
                    ),
                  ),
                  Text('$like赞', style: TextStyle(color: FColor.all9, fontSize: 12.0)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// “关注” 可能感兴趣的人卡片
class _TCard extends StatelessWidget {
  final String avatarPath; // 头像路径
  final String name; // 名字
  final String fans; // 粉丝数
  final String dynamic; // 动态
  final String mark; // 标识

  const _TCard({@required this.avatarPath, @required this.name, @required this.fans, @required this.dynamic, @required this.mark});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      padding: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: FColor.allE,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: ListTile(
              dense: true,
              leading: ClipOval(child: Image.asset(avatarPath)),
              title: Text(name, style: TextStyle(fontSize: 16.0)),
              subtitle: Text('$fans粉丝'),
              trailing: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: ShapeDecoration(shape: StadiumBorder(), color: FColor.primary),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add, size: 16.0, color: Colors.white),
                    Text('关注', style: TextStyle(color: Colors.white, fontSize: 12.0))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
            child: Text(dynamic, style: TextStyle(color: FColor.all5)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(mark, style: TextStyle(color: FColor.all8)),
                Image.asset('assets/images/public/close.png', width: 15.0, fit: BoxFit.cover),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
