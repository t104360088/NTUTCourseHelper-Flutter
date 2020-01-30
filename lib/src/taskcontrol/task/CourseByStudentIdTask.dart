import 'package:flutter/cupertino.dart';
import 'package:flutter_app/debug/log/Log.dart';
import 'package:flutter_app/src/connector/CourseConnector.dart';
import 'package:flutter_app/src/store/Model.dart';
import 'package:flutter_app/ui/other/MyProgressDialog.dart';
import 'package:flutter_app/src/store/json/CourseDetailJson.dart';
import 'TaskModel.dart';

class CourseByStudentIdTask extends TaskModel{
  static final String taskName = "CourseByStudentIdTask";
  String id;
  String year;
  String semester;
  CourseByStudentIdTask(BuildContext context,this.id,this.year,this.semester) : super(context, taskName);

  @override
  Future<TaskStatus> taskStart() async{
    MyProgressDialog.showProgressDialog(context, "getcourse");
    CourseTableJson courseTable = await CourseConnector.getCourseByStudentId(id , year , semester );
    MyProgressDialog.hideProgressDialog();
    Model.instance.addCourseTable( courseTable );
    await Model.instance.save( Model.courseTableJsonKey );

    if( courseTable != null  ) {
      return TaskStatus.TaskSuccess;
    }else {
      return TaskStatus.TaskFail;
    }
  }


}