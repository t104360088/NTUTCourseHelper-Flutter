import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
class S implements WidgetsLocalizations {
  const S();

  static S current;

  static const GeneratedLocalizationsDelegate delegate =
    GeneratedLocalizationsDelegate();

  static S of(BuildContext context) => Localizations.of<S>(context, S);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  String get Contribution => "Contribution";
  String get Friday => "FRI";
  String get Monday => "MON";
  String get Saturday => "SAT";
  String get Sunday => "SUN";
  String get Thursday => "THU";
  String get Tuesday => "TUE";
  String get UnKnown => "";
  String get Wednesday => "WED";
  String get ___________________AboutPage___________________ => "註解";
  String get ___________________FileStore___________________ => "註解";
  String get ___________________OtherUi___________________ => "註解";
  String get ___________________courseUi___________________ => "註解";
  String get ___________________iSchoolUi___________________ => "註解";
  String get ___________________loginUi___________________ => "註解";
  String get ___________________settingUi___________________ => "註解";
  String get ___________________task___________________ => "註解";
  String get about => "About";
  String get aboutDialogString => "This is an app about National Taipei University of Technology";
  String get account => "account";
  String get accountLock => "Account is locked";
  String get accountNull => "Please enter your account";
  String get accountPasswordError => "Account password incorrect";
  String get alertError => "An error occurred";
  String get announcement => "Announcement";
  String get app_name => "NTUT Course Assistant";
  String get areYouSureDeleteMessage => "Are you sure you want to delete the message?";
  String get areYouSureToDownload => "Are you sure you want to download the file";
  String get authCodeFail => "Verification code error";
  String get cancel => "cancel";
  String get category => "Category";
  String get changePassword => "Change the password";
  String get checkLogin => "Check login...";
  String get checkVersion => "Check Version";
  String get checkingVersion => "Checking Version...";
  String get classroom => "Classroom";
  String get classroomUse => "classroomUse";
  String get clearAndRefresh => "Clear and refresh";
  String get closeOnce => "Press again to close";
  String get connectTimeOut => "Connection timed out";
  String get course => "Course";
  String get courseData => "Course Information";
  String get courseId => "Course number";
  String get courseName => "Course Title";
  String get credit => "Credit";
  String get delete => "Delete";
  String get deleteMessage => "Deleting message...";
  String get deleteMessageError => "Delete error";
  String get details => "Details";
  String get download => "download";
  String get downloadFile => "Download file";
  String get downloadWillStart => "Download ready to start";
  String get feedback => "Feedback";
  String get file => "File";
  String get fileAttachmentDetected => "File attachment detected";
  String get fileViewer => "fileViewer";
  String get findNewVersion => "Find new version";
  String get getCourse => "Get schedule...";
  String get getCourseDetail => "Reading course materials...";
  String get getCourseDetailError => "Course data reading error";
  String get getCourseError => "Getting schedule error";
  String get getCourseSemester => "Get semester list...";
  String get getCourseSemesterError => "Getting semester list error";
  String get getISchoolCourseAnnouncement => "Get course announcement...";
  String get getISchoolCourseAnnouncementError => "Get course announcement error";
  String get getISchoolCourseFile => "Get course files";
  String get getISchoolCourseFileError => "Get course files error";
  String get getISchoolNewAnnouncement => "Get the latest announcement...";
  String get getISchoolNewAnnouncementDetail => "Get announcement information...";
  String get getISchoolNewAnnouncementDetailError => "Getting announcement information error";
  String get getISchoolNewAnnouncementError => "Get latest announcement error";
  String get getISchoolNewAnnouncementPage => "Get announcement pages...";
  String get getISchoolNewAnnouncementPageError => "Error getting page number of announcement";
  String get getScoreRank => "Getting grade...";
  String get getScoreRankError => "Getting grade error";
  String get instructor => "Instructor";
  String get isNewVersion => "Already the latest version";
  String get languageSwitch => "Language switch";
  String get location => "Location";
  String get login => "Login";
  String get loginCourse => "Login Course System...";
  String get loginCourseError => "Login Course System Error";
  String get loginISchool => "Login to ISchool...";
  String get loginISchoolError => "Login to ISchool Error";
  String get loginNTUT => "Login to the NTUT...";
  String get loginSave => "Account password has been saved";
  String get logout => "Sign out";
  String get networkError => "Network error";
  String get noAnyAnnouncement => "Without any announcement";
  String get noAnyFile => "No files";
  String get noFunction => "No function";
  String get noMoreData => "No more data";
  String get noPermission => "Permission denied";
  String get noSupport => " not support";
  String get numberOfStudent => "Number of students";
  String get numberOfWithdraw => "Number of withdraw";
  String get password => "password";
  String get passwordExpiredWarning => "Password is about to expire, please update password as soon as possible";
  String get passwordNull => "Please enter the password";
  String get pleaseEnterStudentId => "Please enter student number";
  String get pleaseLogin => "Please Login";
  String get pleaseMoveToFilePage => "Please go directly to the download page";
  String get pullAgainToUpdate => "Pull again to update";
  String get refresh => "refresh";
  String get restart => "restart";
  String get scoreSearch => "Score query";
  String get setting => "Setting";
  String get startClass => "Start class";
  String get studentList => "Student list";
  String get sure => "sure";
  String get syllabus => "Syllabus";
  String get time => "Time";
  String get titleCourse => "Schedule";
  String get titleElse => "Other";
  String get titleEmail => "Email";
  String get unknownError => "An unknown error occurred";
  String get update => "update";
  String get versionInfo => "Version Info";
  String get warning => "warning";
  String get willRestart => "Will restart automatically";
}

class $en extends S {
  const $en();
}

class $zh extends S {
  const $zh();

  @override
  TextDirection get textDirection => TextDirection.ltr;

  @override
  String get cancel => "取消";
  @override
  String get noAnyAnnouncement => "無任何公告";
  @override
  String get loginSave => "帳號密碼已儲存";
  @override
  String get getCourseError => "取得課表錯誤";
  @override
  String get clearAndRefresh => "清除並重新整理";
  @override
  String get noPermission => "沒有權限";
  @override
  String get passwordNull => "請輸入密碼";
  @override
  String get about => "關於";
  @override
  String get courseData => "課程資料";
  @override
  String get areYouSureToDownload => "確定要下載檔案嗎";
  @override
  String get getISchoolCourseAnnouncement => "取得課程公告...";
  @override
  String get setting => "設定";
  @override
  String get alertError => "發生錯誤";
  @override
  String get Saturday => "六";
  @override
  String get feedback => "意見反饋";
  @override
  String get getCourseSemesterError => "取得學期清單錯誤";
  @override
  String get password => "密碼";
  @override
  String get logout => "登出";
  @override
  String get classroomUse => "教室使用";
  @override
  String get getISchoolNewAnnouncementDetail => "取得公告資訊...";
  @override
  String get areYouSureDeleteMessage => "確定要刪除訊息嗎";
  @override
  String get ___________________courseUi___________________ => "註解";
  @override
  String get pleaseLogin => "請登入";
  @override
  String get pleaseMoveToFilePage => "請直接移到下載頁面";
  @override
  String get getISchoolNewAnnouncementPageError => "取得公告頁數錯誤";
  @override
  String get networkError => "網路發生錯誤";
  @override
  String get titleElse => "Other";
  @override
  String get numberOfWithdraw => "撤選人數";
  @override
  String get announcement => "公告";
  @override
  String get sure => "確定";
  @override
  String get loginCourse => "登入課程系統...";
  @override
  String get studentList => "學生清單";
  @override
  String get getISchoolCourseFile => "取得課程檔案";
  @override
  String get classroom => "教室";
  @override
  String get unknownError => "發生未知錯誤";
  @override
  String get downloadFile => "下載檔案";
  @override
  String get isNewVersion => "已經是最新版本了";
  @override
  String get ___________________task___________________ => "註解";
  @override
  String get courseName => "課程名稱";
  @override
  String get willRestart => "將自動重啟並套用語言";
  @override
  String get ___________________OtherUi___________________ => "註解";
  @override
  String get getScoreRankError => "取得成績錯誤";
  @override
  String get pleaseEnterStudentId => "請輸入學號";
  @override
  String get passwordExpiredWarning => "密碼即將過期，請盡快更新密碼";
  @override
  String get getCourse => "取得課表...";
  @override
  String get login => "登入";
  @override
  String get loginNTUT => "登入校園入口網站中...";
  @override
  String get checkLogin => "檢查登入...";
  @override
  String get fileViewer => "fileViewer";
  @override
  String get getISchoolCourseFileError => "取得課程檔案錯誤";
  @override
  String get accountPasswordError => "帳號密碼錯誤";
  @override
  String get downloadWillStart => "下載準備開始";
  @override
  String get file => "檔案";
  @override
  String get getISchoolNewAnnouncementPage => "取得公告頁數...";
  @override
  String get course => "課程";
  @override
  String get getISchoolNewAnnouncementError => "取得最新公告錯誤";
  @override
  String get accountLock => "帳號已被鎖住";
  @override
  String get restart => "重試";
  @override
  String get getCourseDetail => "課程資料讀取中...";
  @override
  String get refresh => "重新整理";
  @override
  String get deleteMessage => "刪除訊息中...";
  @override
  String get ___________________AboutPage___________________ => "註解";
  @override
  String get app_name => "北科課程助手";
  @override
  String get UnKnown => "";
  @override
  String get languageSwitch => "語言切換";
  @override
  String get authCodeFail => "驗證碼錯誤";
  @override
  String get getISchoolNewAnnouncementDetailError => "取得公告資訊錯誤";
  @override
  String get Thursday => "四";
  @override
  String get numberOfStudent => "修課人數";
  @override
  String get connectTimeOut => "連接逾時";
  @override
  String get getScoreRank => "取得成績中...";
  @override
  String get noAnyFile => "無任何檔案";
  @override
  String get pullAgainToUpdate => "再拉一次更新";
  @override
  String get noSupport => "不支持";
  @override
  String get ___________________settingUi___________________ => "註解";
  @override
  String get noMoreData => "已經到底了";
  @override
  String get syllabus => "教學大綱";
  @override
  String get Monday => "一";
  @override
  String get loginCourseError => "登入課程系統錯誤";
  @override
  String get deleteMessageError => "刪除錯誤";
  @override
  String get getCourseDetailError => "課程資料讀取錯誤";
  @override
  String get download => "下載";
  @override
  String get scoreSearch => "分數查詢";
  @override
  String get Friday => "五";
  @override
  String get warning => "警告";
  @override
  String get details => "詳細內容";
  @override
  String get startClass => "開課班級";
  @override
  String get credit => "學分";
  @override
  String get courseId => "課號";
  @override
  String get closeOnce => "再按一次關閉";
  @override
  String get checkingVersion => "檢查中...";
  @override
  String get getCourseSemester => "取得學期清單中...";
  @override
  String get versionInfo => "版本資訊";
  @override
  String get titleCourse => "課表查詢";
  @override
  String get findNewVersion => "發現新版本";
  @override
  String get instructor => "授課老師";
  @override
  String get Sunday => "日";
  @override
  String get Wednesday => "三";
  @override
  String get ___________________loginUi___________________ => "註解";
  @override
  String get accountNull => "請輸入帳號";
  @override
  String get update => "更新";
  @override
  String get getISchoolCourseAnnouncementError => "取得課程公告錯誤";
  @override
  String get delete => "Delete";
  @override
  String get ___________________FileStore___________________ => "註解";
  @override
  String get Tuesday => "二";
  @override
  String get noFunction => "暫無功能";
  @override
  String get ___________________iSchoolUi___________________ => "註解";
  @override
  String get getISchoolNewAnnouncement => "取得最新公告...";
  @override
  String get fileAttachmentDetected => "偵測到檔案附件";
  @override
  String get aboutDialogString => "這是一個關於北科大課程的APP";
  @override
  String get checkVersion => "檢查新版本";
  @override
  String get loginISchoolError => "登入北科I學園錯誤";
  @override
  String get changePassword => "更改密碼";
  @override
  String get loginISchool => "登入北科i學園中...";
  @override
  String get location => "地點";
  @override
  String get time => "時間";
  @override
  String get category => "類別";
  @override
  String get account => "帳號";
  @override
  String get titleEmail => "Email";
  @override
  String get Contribution => "貢獻";
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("en", ""),
      Locale("zh", ""),
    ];
  }

  LocaleListResolutionCallback listResolution({Locale fallback, bool withCountry = true}) {
    return (List<Locale> locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback, supported, withCountry);
      }
    };
  }

  LocaleResolutionCallback resolution({Locale fallback, bool withCountry = true}) {
    return (Locale locale, Iterable<Locale> supported) {
      return _resolve(locale, fallback, supported, withCountry);
    };
  }

  @override
  Future<S> load(Locale locale) {
    final String lang = getLang(locale);
    if (lang != null) {
      switch (lang) {
        case "en":
          S.current = const $en();
          return SynchronousFuture<S>(S.current);
        case "zh":
          S.current = const $zh();
          return SynchronousFuture<S>(S.current);
        default:
          // NO-OP.
      }
    }
    S.current = const S();
    return SynchronousFuture<S>(S.current);
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale, true);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;

  ///
  /// Internal method to resolve a locale from a list of locales.
  ///
  Locale _resolve(Locale locale, Locale fallback, Iterable<Locale> supported, bool withCountry) {
    if (locale == null || !_isSupported(locale, withCountry)) {
      return fallback ?? supported.first;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    }
  }

  ///
  /// Returns true if the specified locale is supported, false otherwise.
  ///
  bool _isSupported(Locale locale, bool withCountry) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        // Language must always match both locales.
        if (supportedLocale.languageCode != locale.languageCode) {
          continue;
        }

        // If country code matches, return this locale.
        if (supportedLocale.countryCode == locale.countryCode) {
          return true;
        }

        // If no country requirement is requested, check if this locale has no country.
        if (true != withCountry && (supportedLocale.countryCode == null || supportedLocale.countryCode.isEmpty)) {
          return true;
        }
      }
    }
    return false;
  }
}

String getLang(Locale l) => l == null
  ? null
  : l.countryCode != null && l.countryCode.isEmpty
    ? l.languageCode
    : l.toString();
