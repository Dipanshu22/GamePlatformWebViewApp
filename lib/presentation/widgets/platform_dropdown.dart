import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:gaming_platform_webview/data/providers/webview_provider.dart';

class PlatformDropdown extends StatelessWidget {
  final Map<String, String> platformUrls = {
    'Rockstar Games': 'https://www.rockstargames.com/',
    'Steam': 'https://store.steampowered.com/',
    'Epic Games': 'https://www.epicgames.com/store/en-US/',
    'PlayStation': 'https://www.playstation.com/',
  };

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<WebViewProvider>(context, listen: false);

    return PopupMenuButton<String>(
      icon: const Icon(Icons.language, color: Colors.white),
      tooltip: 'Select Platform',
      color: Colors.white,
      onSelected: (selectedUrl) {
        provider.updateUrl(selectedUrl);
      },
      itemBuilder: (BuildContext context) {
        return platformUrls.entries.map((entry) {
          return PopupMenuItem<String>(
            value: entry.value,
            child: Row(
              children: [
                const Icon(Icons.gamepad, color: Colors.blue),
                const SizedBox(width: 8),
                Text(entry.key, style: const TextStyle(color: Colors.black)),
              ],
            ),
          );
        }).toList();
      },
    );
  }
}
