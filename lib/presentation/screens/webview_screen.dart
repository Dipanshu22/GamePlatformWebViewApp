import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:gaming_platform_webview/data/providers/webview_provider.dart';
import 'package:gaming_platform_webview/presentation/widgets/webview_container.dart';
import 'package:gaming_platform_webview/presentation/widgets/platform_dropdown.dart';

class WebViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<WebViewProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title:const Text("Game Platform"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon:const Icon(Icons.arrow_back),
            onPressed: provider.goBack,
          ),
          IconButton(
            icon:const Icon(Icons.arrow_forward),
            onPressed: provider.goForward,
          ),
          PlatformDropdown(),
        ],
      ),
      body: WebViewContainer(),
    );
  }
}
