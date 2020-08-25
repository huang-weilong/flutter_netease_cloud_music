import 'package:flutter/material.dart';
import 'package:flutter_netease_cloud_music/constants/f_color.dart';
import 'package:flutter_netease_cloud_music/widget/carousel.dart';

class DiscoveryPage extends StatefulWidget {
  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> with SingleTickerProviderStateMixin {
  List<String> images = [
    'assets/images/cover/cover1.png',
    'assets/images/cover/cover2.png',
    'assets/images/cover/cover3.png',
    'assets/images/cover/cover4.png',
    'assets/images/cover/cover5.png',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(top: 60.0),
        children: [
          SizedBox(height: 150.0, child: _CarouselImage(images)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildFunc('assets/images/public/calendar.png', '每日推荐'),
                _buildFunc('assets/images/public/music_list.png', '歌单'),
                _buildFunc('assets/images/public/leaderboard.png', '排行榜'),
                _buildFunc('assets/images/public/music_station.png', '电台'),
                _buildFunc('assets/images/public/live_broadcast.png', '直播'),
              ],
            ),
          ),
          _buildTitle('宝藏歌单，值得聆听'),
          SizedBox(
            height: 140.0,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              scrollDirection: Axis.horizontal,
              children: [
                _buildMusicList('assets/images/cover/cover5.png', '8.9亿', '[华语速爆新歌]最新华语音乐推荐'),
                _buildMusicList('assets/images/cover/cover6.png', '341万', '《好听的翻唱合集》'),
                _buildMusicList('assets/images/cover/cover7.png', '1.6亿', '人这一辈子，最怕突然听懂了一首歌'),
                _buildMusicList('assets/images/cover/cover8.png', '1743万', '好听到单曲循环'),
                _buildMusicList('assets/images/cover/cover9.png', '302万', '700手流行经典老歌'),
              ],
            ),
          ),
          _buildTitle('根据银临推荐'),
          SizedBox(
            height: 210.0,
            child: DefaultTabController(
              length: 2,
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Column(
                    children: [
                      _buildMusicRecommend('assets/images/cover/cover10.png', '不夜侯（剧情版）', '银临/音频怪物', '梦里不知身是客 是耶非耶 化为蝴蝶'),
                      _buildMusicRecommend('assets/images/cover/cover11.png', '十世镜', '银临', '对西窗红烛 择药几株 温酒一壶', iconText: '独家'),
                      _buildMusicRecommend('assets/images/cover/cover12.png', '牵丝戏', '排骨教主', '超66%人播放', iconText: 'SQ'),
                    ],
                  ),
                  Column(
                    children: [
                      _buildMusicRecommend('assets/images/cover/cover1.png', '青玉恋', '子衿', '蓦然回首 那人却在灯火阑珊处', iconText: '独家'),
                      _buildMusicRecommend('assets/images/cover/cover2.png', '月', '大柯', '万般思绪白眉梢满头举杯明月愁更愁', iconText: 'SQ'),
                      _buildMusicRecommend('assets/images/cover/cover3.png', '千年缘', '心然', '岁月随心 终会淡然', iconText: 'SQ'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          _buildTitle('午安 来杯音乐红茶'),
          SizedBox(
            height: 140.0,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              scrollDirection: Axis.horizontal,
              children: [
                _buildMusicList('assets/images/cover/cover4.png', '13万', '2010年代华语热播流行好歌'),
                _buildMusicList('assets/images/cover/cover1.png', '2亿', '最懂你的欧美推荐每日更新35首'),
                _buildMusicList('assets/images/cover/cover2.png', '809万', '在旅途中 你听得见的没好音乐风景'),
                _buildMusicList('assets/images/cover/cover3.png', '34万', '听歌学英文 童声活泼演绎欧美流行'),
                _buildMusicList('assets/images/cover/cover7.png', '2032万', '你学生时代的MP3每日更新30首'),
              ],
            ),
          ),
          SizedBox(height: 54.0)
        ],
      ),
    );
  }

  Widget _buildFunc(String iconPath, String text) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(bottom: 4.0),
          decoration: ShapeDecoration(shape: CircleBorder(), color: FColor.primary),
          child: Image.asset(iconPath),
        ),
        Text(text, style: TextStyle(fontSize: 12.0))
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
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
    );
  }

  Widget _buildMusicList(String coverImg, String playCount, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: SizedBox(
        width: 100.0,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image.asset(coverImg, fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 3.0,
                  right: 3.0,
                  child: Row(
                    children: [
                      Image.asset('assets/images/public/play1.png', width: 9.0),
                      Text(playCount, style: TextStyle(color: Colors.white, fontSize: 12.0)),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text(title, maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12.0)),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMusicRecommend(String coverImg, String name, String singer, String description, {String iconText}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(6.0), child: Image.asset(coverImg)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: name,
                      style: TextStyle(color: FColor.all3, fontSize: 16.0),
                      children: [TextSpan(text: ' - $singer', style: TextStyle(color: FColor.all9, fontSize: 12.0))],
                    ),
                  ),
                  SizedBox(height: 4.0),
                  RichText(
                    text: TextSpan(children: [
                      if (iconText != null)
                        WidgetSpan(
                          child: Container(
                            padding: EdgeInsets.all(1.0),
                            margin: EdgeInsets.only(bottom: 3.0, right: 3.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: FColor.primary, width: 0.5),
                              borderRadius: BorderRadius.circular(1.0),
                            ),
                            child: Text(iconText, style: TextStyle(color: FColor.primary, fontSize: 7.0, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      TextSpan(text: description, style: TextStyle(fontSize: 12.0, color: FColor.all9))
                    ]),
                  ),
//                  Text(description, style: TextStyle(fontSize: 12.0, color: FColor.all9))
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 14.0),
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
            decoration: BoxDecoration(
              border: Border.all(color: FColor.allC),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Image.asset('assets/images/public/play2.png', color: FColor.primary, width: 10.0),
          ),
        ],
      ),
    );
  }
}

class _CarouselImage extends StatefulWidget {
  final List<String> images;

  _CarouselImage(this.images);

  @override
  __CarouselImageState createState() => __CarouselImageState();
}

class __CarouselImageState extends State<_CarouselImage> {
  @override
  Widget build(BuildContext context) {
    return Carousel(
      autoPlay: true,
      playInterval: Duration(seconds: 5),
      alignment: Alignment.bottomCenter,
      dotSelectColor: FColor.primary,
      dotUnSelectColor: FColor.allE,
      children: widget.images.map((dir) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
          decoration: BoxDecoration(
            color: Colors.orange,
            image: DecorationImage(image: AssetImage(dir), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10.0),
          ),
        );
      }).toList(),
    );
  }
}
