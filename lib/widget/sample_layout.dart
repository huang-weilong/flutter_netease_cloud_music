import 'package:flutter/cupertino.dart';
import 'package:flutter_netease_cloud_music/constants/f_color.dart';

// 上图片 下文字
Widget buildColumnIconAndText(String iconPath, String text) {
  return Column(
    children: [
      Image.asset(iconPath),
      Text(text, style: TextStyle(fontSize: 12.0, color: FColor.all3)),
    ],
  );
}

class BuildColumnIconAndText extends StatelessWidget {
  final String iconPath;
  final String text;
  final Color iconColor;
  final Color textColor;
  final double padding;

  BuildColumnIconAndText(
    this.iconPath,
    this.text, {
    this.iconColor,
    this.textColor: const Color(0xff333333),
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(iconPath),
        SizedBox(height: padding),
        Text(text, style: TextStyle(fontSize: 12.0, color: textColor)),
      ],
    );
  }
}

// 行布局 图片 文字 尾部部件
Widget buildRowTile(String iconPath, String text, {Widget trailing}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Row(
      children: [
        Image.asset(iconPath),
        SizedBox(width: 20.0),
        Expanded(child: Text(text)),
        if (trailing != null) trailing,
      ],
    ),
  );
}

class BuildRowTile extends StatelessWidget {
  final Widget leadingIcon;
  final String text;
  final Widget icon;
  final Widget trailing;
  final EdgeInsets padding;

  BuildRowTile({
    this.leadingIcon,
    this.text,
    this.icon,
    this.trailing,
    this.padding: const EdgeInsets.symmetric(vertical: 10.0),
  }) : assert(text != null || icon != null, 'text或icon必须存在一个');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
//          leadingIcon,
          SizedBox(width: 20.0),
          if (text != null) Expanded(child: Text(text)),
          if (icon != null) Expanded(child: icon),
          if (trailing != null) trailing,
        ],
      ),
    );
  }
}
