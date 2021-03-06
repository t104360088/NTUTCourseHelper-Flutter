import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/connector/core/ConnectorParameter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewPluginScreen extends StatefulWidget {
  final String url;
  final String title;

  WebViewPluginScreen(this.title, this.url);

  @override
  _WebViewPluginScreen createState() => _WebViewPluginScreen();
}

class _WebViewPluginScreen extends State<WebViewPluginScreen>
    with AutomaticKeepAliveClientMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  String initUrl;

  // 標記是否是加載中
  bool loading = true;
  StreamSubscription<String> onUrlChanged;
  StreamSubscription<WebViewStateChanged> onStateChanged;
  FlutterWebviewPlugin flutterWebViewPlugin = new FlutterWebviewPlugin();

  @override
  void initState() {
    super.initState();
    onStateChanged =
        flutterWebViewPlugin.onStateChanged.listen((WebViewStateChanged state) {
      _handleStateChange(state);
    });
    onUrlChanged = flutterWebViewPlugin.onUrlChanged.listen((url) {
      _handleUrlChanged(url);
    });
    initUrl = widget.url;
  }

  void _handleUrlChanged(String url) async {}

  void _handleStateChange(WebViewStateChanged state) async {
    switch (state.type) {
      case WebViewState.abortLoad:
        break;
      case WebViewState.shouldStart:
        setState(() {
          loading = true;
        });
        break;
      case WebViewState.startLoad:
        break;
      case WebViewState.finishLoad:
        setState(() {
          loading = false;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); //如果使用AutomaticKeepAliveClientMixin需要呼叫
    List<Widget> titleContent = [];
    titleContent.add(
      Text(
        widget.title,
        style: TextStyle(color: Colors.white),
      ),
    );
    if (loading) {
      titleContent.add(CupertinoActivityIndicator());
    }
    titleContent.add(Container(width: 50.0));

    return new WebviewScaffold(
      url: initUrl,
      userAgent: presetUserAgent,
      key: scaffoldKey,
      //clearCache: true,
      //clearCookies: true,
      appBar: new AppBar(
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: titleContent,
        ),
        iconTheme: new IconThemeData(color: Colors.white),
      ),
      withZoom: true,
      withLocalStorage: true,
      withJavascript: true,
    );
  }

  @override
  void dispose() {
    // Every listener should be canceled, the same should be done with this stream.
    super.dispose();
    onUrlChanged.cancel();
    onStateChanged.cancel();
    flutterWebViewPlugin.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
