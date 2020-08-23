import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netease_cloud_music/constants/f_color.dart';
import 'package:flutter_netease_cloud_music/widget/sample_layout.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _BuildHeader(),
        _buildTitle('我的音乐'),
        SizedBox(
          height: 140.0,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            scrollDirection: Axis.horizontal,
            children: [
              _BuildMyMusicCard(
                backgroundPath: 'assets/images/cover/cover1.png',
                iconPath: 'assets/images/public/like.png',
                title: '我喜欢的音乐',
                bottomIcon: 'assets/images/public/play2.png',
                bottomText: '心动模式',
              ),
              _BuildMyMusicCard(
                backgroundPath: 'assets/images/cover/cover2.png',
                iconPath: 'assets/images/public/radio_station.png',
                title: '私人FM',
                bottomText: '听点新鲜的',
              ),
              _BuildMyMusicCard(
                topText: '推荐',
                iconPath: 'assets/images/public/wave.png',
                title: '推歌精选',
                bottomText: '听点新鲜的',
              ),
              _BuildMyMusicCard(
                iconPath: 'assets/images/public/wave.png',
                title: '私藏推荐',
                bottomText: '听点新鲜的',
              ),
            ],
          ),
        ),
        _buildTitle('最近播放'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _BuildRecentPlay(backgroundPath: 'assets/images/cover/cover3.png', text: '全部已播歌曲', subText: '300首'),
              _BuildRecentPlay(backgroundPath: 'assets/images/cover/cover4.png', text: '歌单：学习歌单||极静轻音乐', subText: '继续播放'),
            ],
          ),
        ),
        _buildTitle('创建歌单'),
        GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          childAspectRatio: 2.6,
          children: [
            _BuildRecentPlay(
              backgroundPath: 'assets/images/cover/cover5.png',
              text: '我创建的歌单',
              subText: '139首',
              showPlay: false,
              isExpanded: false,
            ),
            _BuildRecentPlay(
              backgroundPath: 'assets/images/cover/cover6.png',
              text: '__long的2019年度歌单',
              subText: '10首',
              showPlay: false,
              isExpanded: false,
            ),
            _BuildRecentPlay(
              backgroundPath: 'assets/images/cover/cover7.png',
              text: '全部已播歌曲',
              subText: '300首',
              showPlay: false,
              isExpanded: false,
            ),
            _BuildRecentPlay(
              backgroundPath: 'assets/images/cover/cover8.png',
              text: '全部已播歌曲',
              subText: '300首',
              showPlay: false,
              isExpanded: false,
            ),
          ],
        ),
        _buildTitle('推荐歌单'),
        GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          childAspectRatio: 2.6,
          children: [
            _BuildRecentPlay(
              backgroundPath: 'assets/images/cover/cover9.png',
              text: '云音乐热歌榜',
              subText: '本周最热的歌曲',
              showPlay: false,
              isExpanded: false,
            ),
            _BuildRecentPlay(
              backgroundPath: 'assets/images/cover/cover10.png',
              text: '云音乐新歌榜',
              subText: '本周最火的新歌',
              showPlay: false,
              isExpanded: false,
            ),
            _BuildRecentPlay(
              backgroundPath: 'assets/images/cover/cover11.png',
              text: '【摸鱼/踩点剪辑用】适合用来当手书的BGM',
              subText: '本周热门收藏',
              showPlay: false,
              isExpanded: false,
            ),
            _BuildRecentPlay(
              backgroundPath: 'assets/images/cover/cover12.png',
              text: '国风古风中国风神曲，细腻地抚摸你的耳膜',
              subText: '本周热门收听',
              showPlay: false,
              isExpanded: false,
            ),
          ],
        ),
        SizedBox(height: 54.0)
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          Row(
            children: [
              Text('更多', style: TextStyle(color: FColor.all9, fontSize: 12.0)),
              Image.asset('assets/images/public/right_arrow.png', width: 12.0),
            ],
          )
        ],
      ),
    );
  }
}

class _BuildHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0, bottom: 20.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/cover/cover0.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Color(0x99666666), BlendMode.luminosity),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(child: Image.asset('assets/images/public/avatar.jpg', width: 50.0)),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('__long', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      Container(
                        margin: EdgeInsets.only(top: 4.0),
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.5),
                        decoration: ShapeDecoration(shape: StadiumBorder(), color: Color(0x66ffffff)),
                        child: Text('Lv.8', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10.0)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Text('开通黑胶vip', style: TextStyle(color: FColor.allC, fontSize: 10.0)),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BuildColumnIconAndText('assets/images/public/music.png', '本地音乐', textColor: Colors.white, padding: 4.0),
                BuildColumnIconAndText('assets/images/public/download.png', '下载管理', textColor: Colors.white, padding: 4.0),
                BuildColumnIconAndText('assets/images/public/music_station.png', '我的电台', textColor: Colors.white, padding: 4.0),
                BuildColumnIconAndText('assets/images/public/collect.png', '我的收藏', textColor: Colors.white, padding: 4.0),
                Column(
                  children: [
                    ClipOval(child: Image.asset('assets/images/public/avatar.jpg', width: 26.0)),
                    SizedBox(height: 4.0),
                    Text('关注新歌', style: TextStyle(fontSize: 12.0, color: Colors.white))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// 我的音乐下的卡片布局
class _BuildMyMusicCard extends StatelessWidget {
  final String topText;
  final String backgroundPath;
  final String iconPath;
  final String title;
  final String bottomIcon;
  final String bottomText;
  _BuildMyMusicCard({this.topText, this.backgroundPath, this.iconPath, this.title, this.bottomIcon, this.bottomText})
      : assert(iconPath != null),
        assert(title != null),
        assert(bottomText != null);

  @override
  Widget build(BuildContext context) {
    Widget current = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(topText ?? '', style: TextStyle(fontSize: 12.0, color: Colors.white)),
        ),
        Column(
          children: [
            Image.asset(iconPath),
            Text(title, style: TextStyle(color: Colors.white, fontSize: 12.0)),
          ],
        ),
        Container(
          margin: EdgeInsets.only(bottom: 8.0),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
          decoration: ShapeDecoration(shape: StadiumBorder(), color: Color(0x66ffffff)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (bottomIcon != null) Image.asset(bottomIcon, color: Colors.white, width: 11.0),
              Text(bottomText, style: TextStyle(fontSize: 10.0, color: Colors.white)),
            ],
          ),
        )
      ],
    );

    if (backgroundPath != null)
      current = Container(
        width: 110.0,
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundPath),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Color(0x99666666), BlendMode.darken),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: current,
      );
    else
      current = Container(
        width: 110.0,
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        decoration: BoxDecoration(
          color: FColor.allC,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: current,
      );

    return current;
  }
}

// 最近播放
class _BuildRecentPlay extends StatelessWidget {
  final String backgroundPath;
  final String text;
  final String subText;
  final bool showPlay;
  final bool isExpanded;

  _BuildRecentPlay({this.backgroundPath, this.text, this.subText, this.showPlay: true, this.isExpanded: true});

  @override
  Widget build(BuildContext context) {
    Widget current = Container(
      child: Row(
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            padding: EdgeInsets.all(18.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              image: DecorationImage(image: AssetImage(backgroundPath)),
            ),
            child: showPlay
                ? ClipOval(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.white.withOpacity(0.9),
                      child: Image.asset('assets/images/public/play2.png', width: 12.0, color: FColor.primary),
                    ),
                  )
                : Container(),
          ),
          Expanded(
            child: Container(
              height: 60.0,
              margin: EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    text,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 13.0),
                  ),
                  Text(subText, style: TextStyle(fontSize: 10.0, color: FColor.all9))
                ],
              ),
            ),
          )
        ],
      ),
    );
    if (isExpanded)
      current = Expanded(
        child: current,
      );
    return current;
  }
}
