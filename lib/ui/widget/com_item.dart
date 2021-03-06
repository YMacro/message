import 'package:base_library/base_library.dart';
import 'package:flutter/material.dart';
import 'package:message/data/protocol/modeels.dart';
import 'package:message/utils/navigator_util.dart';

class ComArrowItem extends StatelessWidget {
  ComArrowItem(
    this.model, {
    Key key,
  }) : super(key: key);
  final ComModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.white,
        child: ListTile(
          onTap: () {
            if (model.page == null) {
              NavigatorUtil.pushWeb(context,
                  title: model.title, url: model.url, isHome: true);
            } else {
              NavigatorUtil.pushPage(context, model.page,
                  pageName: model.title);
            }
          },
          title: Text(model.title == null ? "" : model.title),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                model.extra == null ? "" : model.extra,
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              Icon(
                Icons.navigate_next,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      decoration: Decorations.bottom,
    );
  }
}
