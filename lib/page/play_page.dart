import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netease_cloud_music/constants/f_color.dart';

class PlayPage extends StatefulWidget {
  @override
  _PlayPageState createState() => _PlayPageState();
}

GlobalKey<__BuildProgressBarState> globalKey = GlobalKey();

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FColor.all9,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('好想爱这个世界啊（Live）', style: TextStyle(color: Colors.white, fontSize: 16.0)),
                      Text('华晨宇', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                IconButton(icon: Icon(Icons.share, color: Colors.white), onPressed: () {})
              ],
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/public/like.png'),
                  Image.asset('assets/images/public/download2.png'),
                  Image.asset('assets/images/public/microphone.png'),
                  Image.asset('assets/images/public/comment2.png'),
                  Image.asset('assets/images/public/more2.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: _BuildProgressBar(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/public/heartbeat.png'),
                  Image.asset('assets/images/public/previous.png'),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset('assets/images/public/pause.png', width: 50.0, fit: BoxFit.cover),
                  ),
                  Image.asset('assets/images/public/next.png', color: Colors.white),
                  Image.asset('assets/images/public/play_list.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BuildProgressBar extends StatefulWidget {
  @override
  __BuildProgressBarState createState() => __BuildProgressBarState();
}

class __BuildProgressBarState extends State<_BuildProgressBar> {
  double _currentTime = 0.0;
  double _totalTime = 265.0;
  Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void test1() {
    print('object------------');
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
      _currentTime++;
      if (_currentTime >= _totalTime) timer.cancel();
    });
  }

  void pauseTimer() {
    timer?.cancel();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(calcTime(_currentTime), style: TextStyle(color: Colors.white, fontSize: 10.0)),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomPaint(
              painter: ProgressBar(currentTime: _currentTime, totalTime: _totalTime, totalWidth: MediaQuery.of(context).size.width - 110.0),
              child: SizedBox(width: 100.0),
            ),
          ),
        ),
        Text(calcTime(_totalTime), style: TextStyle(color: Colors.white, fontSize: 10.0)),
      ],
    );
  }

  String calcTime(double time) {
    int minute = time ~/ 60;
    int second = (time - (time ~/ 60 * 60)).floor();
    String _minute = minute < 10 ? '0$minute' : minute.toString();
    String _second = second < 10 ? '0$second' : second.toString();

    return _minute + ':' + _second;
  }
}

class ProgressBar extends CustomPainter {
  final double currentTime;
  final double totalTime;
  final double totalWidth;

  ProgressBar({this.currentTime, this.totalTime, this.totalWidth});

  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint();
    paint1.color = Colors.white;
    paint1.isAntiAlias = true;
    paint1.style = PaintingStyle.fill;
    paint1.strokeWidth = 1.5;
    var paint2 = Paint();
    paint2.color = Color(0xffbbbbbb);
    paint2.isAntiAlias = true;
    paint2.style = PaintingStyle.fill;
    paint2.strokeWidth = 1.5;

    canvas.drawLine(Offset(0.0, 0.0), Offset(totalWidth, 0.0), paint2); // 总时长底部线
    canvas.drawLine(Offset(0.0, 0.0), Offset(totalWidth / totalTime * currentTime, 0.0), paint1); // 已播放进度
    canvas.drawCircle(Offset(totalWidth / totalTime * currentTime, 0.0), 2.5, paint1); // 当前播放点
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
