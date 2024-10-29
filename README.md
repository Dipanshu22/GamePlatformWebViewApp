# Gaming Platform WebView

A Flutter application that provides access to multiple gaming platforms, such as Rockstar Games, Steam, Epic Games, and PlayStation, using WebView. The app includes a home screen with a list of games and a WebView screen for navigating gaming platforms. 

## Project Directory Structure
```bash
gaming_platform_webview/
📦 gaming_platform_webview
 ┣ 📂lib
 ┃ ┣ 📜main.dart                # App entry point
 ┃ ┣ 📜app.dart                 # Contains MyApp widget
 ┃ ┣ 📂navigation
 ┃ ┃ ┗ 📜main_navigation.dart    # MainNavigation widget
 ┃ ┣ 📂data
 ┃ ┃ ┗ 📂providers
 ┃ ┃   ┗ 📜webview_provider.dart # WebViewProvider for state management
 ┃ ┣ 📂presentation
 ┃ ┃ ┣ 📂screens
 ┃ ┃ ┃ ┣ 📜home_screen.dart      # Home screen displaying game list
 ┃ ┃ ┃ ┗ 📜webview_screen.dart   # WebView screen with navigation options
 ┃ ┃ ┗ 📂widgets
 ┃ ┃   ┣ 📜webview_container.dart # WebView container widget
 ┃ ┃   ┗ 📜platform_dropdown.dart # Dropdown for selecting platforms
```


## Features

- **Home Screen**: Displays a static list of games.
- **WebView Screen**: Allows navigation to various gaming platforms.
- **Platform Dropdown**: A dropdown in the app bar to switch between platforms. Selecting a platform updates the WebView to display the chosen gaming platform’s website.
- **Navigation Buttons**: Includes back and forward buttons for easy navigation within WebView.

## Dependencies

- **[Flutter](https://flutter.dev)** (version 2.0 or higher)
- **[Provider](https://pub.dev/packages/provider)** for state management
- **[webview_flutter](https://pub.dev/packages/webview_flutter)** for WebView integration

Ensure these packages are in your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.1.2
  webview_flutter: ^4.10.0
  webview_flutter_android: ^4.0.0
  webview_flutter_wkwebview: ^4.0.0
```

## How to Run the App
**1.Clone the repository:**
```bash
git clone https://github.com/Dipanshu22/gaming_platform_webview.git
cd gaming_platform_webview
```
**2.Install dependencies:**
```bash
flutter pub get
```
**3.Run the app: Ensure your emulator or physical device is connected, then run**
```bash
flutter run
```

## Screenshots

### 1. Home Screen
![Screenshot 2024-10-29 080246](https://github.com/user-attachments/assets/bfa5d6c9-fb41-49a2-9f2d-be9f1d18aa3f)


### 2. WebView Screen
![Screenshot 2024-10-29 080315](https://github.com/user-attachments/assets/fa8d142a-e50b-410c-b25d-cf86055b65b2)


### Platform Dropdown and Selected Platform Result

<div style="display: flex; justify-content: space-around;">
  <div>
    <p>Platform Dropdown</p>
    <img src="https://github.com/user-attachments/assets/a33395f4-7932-48e3-9c8e-80e0ffa0ea1e" alt="Platform Dropdown" width="300">
  </div>
  <div>
    <p>Selected Platform Result</p>
    <img src="https://github.com/user-attachments/assets/017b3fd5-71f5-401c-adb1-76cb38321fff" alt="Selected Platform Result" width="300">
  </div>
</div>

## Conclusion

This project provides a user-friendly interface for accessing multiple gaming platforms in a single app, leveraging WebView for smooth navigation. Whether you’re looking to explore different game stores or manage platform-specific content, **Gaming Platform WebView** offers a seamless experience across popular gaming platforms.

Feel free to contribute, report issues, or suggest enhancements by opening an issue or pull request on GitHub. We’d love to see your ideas for improving the app!
