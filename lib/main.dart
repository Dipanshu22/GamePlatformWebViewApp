import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/providers/webview_provider.dart';
import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WebViewProvider()),
      ],
      child: MyApp(),
    ),
  );
}
