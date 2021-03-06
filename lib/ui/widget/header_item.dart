import 'package:base_library/base_library.dart';
import 'package:fluintl/fluintl.dart';
import 'package:flutter/material.dart';
import 'package:message/res/strings.dart';
import 'package:message/utils/utils.dart';

class HeaderItem extends StatelessWidget {
  HeaderItem({
    this.margin,
    this.titleColor,
    this.leftIcon,
    this.titleId: Ids.titleProject,
    this.title,
    this.extraId: Ids.more,
    this.extra,
    this.rightIcon,
    this.onTap,
    Key key,
  }) : super(key: key);

  final EdgeInsetsGeometry margin;
  final Color titleColor;
  final IconData leftIcon;
  final String titleId;
  final String title;
  final String extraId;
  final String extra;
  final IconData rightIcon;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      margin: margin ?? EdgeInsets.only(top: 0.0),
      child: ListTile(
          onTap: onTap,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                leftIcon ?? Icons.whatshot,
                color: titleColor ?? Colors.blueAccent,
              ),
              Gaps.hGap10,
              Expanded(
                  child: Text(
                title ?? IntlUtil.getString(context, titleId),
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: titleColor ?? Colors.blueAccent,
                  fontSize: Utils.getTitleFontSize(
                    title ?? IntlUtil.getString(context, titleId),
                  ),
                ),
              ))
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                extra ?? IntlUtil.getString(context, extraId),
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              Icon(
                rightIcon ?? Icons.keyboard_arrow_right,
                color: Colors.grey,
              ),
            ],
          )),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.33, color: Colours.divider),
        ),
      ),
    );
  }
}
