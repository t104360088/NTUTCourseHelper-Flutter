

import 'package:flutter/cupertino.dart';
import 'package:flutter_app/src/store/json/CourseTableJson.dart';
import 'package:flutter_app/src/store/json/CourseMainExtraJson.dart';

class CourseAnnouncementScreen extends StatefulWidget {
  final CourseInfoJson courseInfo;
  CourseAnnouncementScreen( this.courseInfo );

  @override
  _CourseAnnouncementScreen createState( ) => _CourseAnnouncementScreen();
}

class _CourseAnnouncementScreen extends State<CourseAnnouncementScreen> with AutomaticKeepAliveClientMixin {
  CourseInfoJson courseInfo;


  @override
  void initState() {
    _addTask();
    super.initState();
  }

  void _addTask() async {
  }


  @override
  Widget build(BuildContext context) {
    super.build(context);  //如果使用AutomaticKeepAliveClientMixin需要呼叫
    return Container(
      child: Text("ann"),
    );
  }

  @override
  bool get wantKeepAlive => true;
}