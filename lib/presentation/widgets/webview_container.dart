import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:gaming_platform_webview/data/providers/webview_provider.dart';

class WebViewContainer extends StatefulWidget {
  @override
  _WebViewContainerState createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = Provider.of<WebViewProvider>(context, listen: false);
      provider.setController(_controller);
    });

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (_) =>
              Provider.of<WebViewProvider>(context, listen: false)
                  .setLoading(true),
          onPageFinished: (_) =>
              Provider.of<WebViewProvider>(context, listen: false)
                  .setLoading(false),
          onWebResourceError: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text("Error loading page: ${error.description}")),
            );
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.rockstargames.com/'));
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<WebViewProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          if (provider.isLoading)
            const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
