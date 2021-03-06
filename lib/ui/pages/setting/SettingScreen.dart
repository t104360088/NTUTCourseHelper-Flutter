import 'package:flutter/material.dart';
import 'package:flutter_app/generated/i18n.dart';
import 'package:flutter_app/src/connector/NTUTConnector.dart';
import 'package:flutter_app/src/store/Model.dart';
import 'package:flutter_app/src/store/json/UserDataJson.dart';
import 'package:flutter_app/ui/icon/MyIcons.dart';
import 'package:flutter_app/ui/other/CustomRoute.dart';
import 'package:flutter_app/ui/other/ListViewAnimator.dart';
import 'package:flutter_app/ui/other/MyToast.dart';
import 'package:flutter_app/ui/pages/login/LoginPage.dart';
import 'package:flutter_app/ui/pages/webview/WebViewPluginScreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:random_color/random_color.dart';

import 'page/AboutPage.dart';
import 'page/SettingPage.dart';

enum onListViewPress { Setting, Logout, Report, About, ChangePassword  }

class SettingScreen extends StatefulWidget {
  final PageController pageController;
  SettingScreen(this.pageController);
  @override
  _SettingScreen createState() => _SettingScreen();
}

class _SettingScreen extends State<SettingScreen> {
  final List<Map> listViewData = [
    {"icon": Icons.settings, "title": S.current.setting, "onPress": onListViewPress.Setting},
    {
      "icon": MyIcon.arrows_cw,
      "title": S.current.changePassword,
      "onPress": onListViewPress.ChangePassword
    },
    {"icon": MyIcon.logout, "title": S.current.logout , "onPress": onListViewPress.Logout},
    {"icon": Icons.report, "title": S.current.feedback , "onPress": onListViewPress.Report},
    {"icon": Icons.info, "title": S.current.about, "onPress": onListViewPress.About}
  ];

  String formUrl =
      "https://docs.google.com/forms/d/e/1FAIpQLSc3JFQECAA6HuzqybasZEXuVf8_ClM0UZYFjpPvMwtHbZpzDA/viewform";

  @override
  void initState() {
    super.initState();
  }

  void _onListViewPress(onListViewPress value) {
    switch (value) {
      case onListViewPress.Logout:
        Model.instance.logout().then( (_){
          Navigator.of(context).push(CustomRoute(LoginPage())).then( (_){
            widget.pageController.jumpToPage(0);  //跳轉到第一頁
          });
        });
        break;
      case onListViewPress.About:
        Navigator.of(context).push(
          PageTransition(
            type: PageTransitionType.downToUp,
            child: AboutPage(),
          ),
        );
        break;
      case onListViewPress.Setting:
        Navigator.of(context).push(
          PageTransition(
            type: PageTransitionType.downToUp,
            child: SettingPage( widget.pageController ),
          ),
        );
        break;
      case onListViewPress.Report:
        Navigator.of(context).push(
          PageTransition(
            type: PageTransitionType.downToUp,
            child: WebViewPluginScreen(S.current.feedback , formUrl),
          ),
        );
        break;
      default:
        MyToast.show(S.current.noFunction);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.setting),
      ),
      body: ListView.separated(
        itemCount: listViewData.length + 1,
        itemBuilder: (context, index) {
          Widget widget;
          widget = (index == 0)
              ? _buildHeader()
              : _buildSetting(listViewData[index - 1]);
          return GestureDetector(
              behavior: HitTestBehavior.opaque, //讓透明部分有反應
              child: WidgetAnimator(widget),
              onTap: () {
                if (index != 0)
                  _onListViewPress(listViewData[index - 1]['onPress']);
              });
        },
        separatorBuilder: (context, index) {
          // 顯示格線
          return Container(
            color: Colors.black12,
            height: 1,
          );
        },
      ),
    );
  }

  Container _buildHeader() {
    UserInfoJson userInfo = Model.instance.getUserInfo();
    String givenName = userInfo.givenName;
    String userMail = userInfo.userMail;
    givenName = (givenName.isEmpty) ? S.current.pleaseLogin : givenName;
    userMail = (userMail.isEmpty) ? "" : userMail;
    Widget userImage = NTUTConnector.getUserImage();
    return Container(
      //color: Colors.yellow,
      height: 80,
      margin: EdgeInsets.only(top: 20.0, left: 20 , right: 20.0, bottom: 20.0),
      constraints: BoxConstraints(maxHeight: 60),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: userImage,
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  givenName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  userMail,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ])
        ],
      ),
    );
  }

  Container _buildSetting(Map data) {
    return Container(
      //color: Colors.yellow,
      padding:
          EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            data['icon'],
            color: RandomColor()
                .randomColor(colorSaturation: ColorSaturation.highSaturation),
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            data['title'],
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
