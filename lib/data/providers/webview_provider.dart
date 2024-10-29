import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewProvider with ChangeNotifier {
  bool _isLoading = true;
  WebViewController? _webViewController;

  bool get isLoading => _isLoading;
  WebViewController? get webViewController => _webViewController;

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void setController(WebViewController controller) {
    _webViewController = controller;
    notifyListeners();
  }

  void updateUrl(String url) {
    if (_webViewController != null) {
      _webViewController!.loadRequest(Uri.parse(url));
    }
  }

  Future<void> reloadWebView() async {
    await webViewController?.reload();
  }

  Future<void> goBack() async {
    if (_webViewController != null && await _webViewController!.canGoBack()) {
      await _webViewController!.goBack();
    }
  }

  Future<void> goForward() async {
    if (_webViewController != null &&
        await _webViewController!.canGoForward()) {
      await _webViewController!.goForward();
    }
  }
}
