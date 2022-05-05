# Flutter Research for Augur

### Presentation
https://www.canva.com/design/DAE_TWreeeI/jigxhwEOe-ja8FpscKIrBw/view?utm_content=DAE_TWreeeI&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

### Screenshots/Demo

### File Descriptions
- anomolyolly is the final version of the application
- design_update is a pdf containing app UI ideas & planning
- dynamic_page is an application that shows how to navigate to a dynamic page while sending data
- grocery_list is an application that displays a list and allows you to cross off items
- login is an application that implements a user login via gihub
- myapp is a basic app that uses a button to increment a count (original flutter tutorial)
- navigation is an application that uses buttons to push and pop pages off for navigation
- practice_api is an application that loads in data from an API
- search and searchbar are applications that experiment with implementing search bars
- slider is an application that plays around with creating sliders
- startup_namer is an application that combines two randomly generated English words and allows the user to favorite combinations. Then, the user can navigate to a page that displays their favorites
- switchcodde is a basic app that uses switches
- textfields is an app that experiments with textfields

## Documentation

### Getting Started with Flutter

*Installing Flutter for Mac*  
https://flutter.dev/docs/get-started/install/macos

**System Requirements:**  
- Operating Systems:  macOS (64-bit)
- Disk Space: 2.8 GB
- Tools: git, Xcode (recommended)  

**Download Flutter SDK**  
https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_2.0.6-stable.zip  

Download the above zip file and unzip it in your desired location. Add the Flutter tool to your path using `export PATH="$PATH:`pwd`/flutter/bin"` & now you can run Flutter commands! Run `flutter doctor` to see if there are any dependencies you need to install to complete setup.  

**Update Path**  
Update your PATH so that you can use Flutter commands in any terminal session. Do so by following these steps:  
1. Determine the path of your clone of the FLutter SDK
2. Open or create the rc file for your shell (type `echo $SHELL` to find out what shell you're using
- If you're using Bash, edit $HOME/.bash_profile or $HOME/.bashrc
- If you're using Z shell, edit $HOME/.zshrc
- If you're using a different shell, the file path and filename will be different on your machine
3. Add the following line `export PATH="$PATH:[PATH_OF_FLUTTER_GIT_DIRECTORY]/bin"` and change [PATH_OF_FLUTTER_GIT_DIRECTORY] to be the path of your clone of the Flutter git repo
4. Run `source $HOME/.<rc file>` to refresh the window
5. Verify that the flutter/bin directory is in your path by running `echo $PATH`
6. And finally, verify that Flutter commands are available by running `which flutter`  


### Running Flutter
**iOS Setup**  
*Installing Xcode*
1. Install the latest stable version of Xcode in the app store or using this web download: https://developer.apple.com/xcode/
2. Configure Xcode command line tools by running `sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer' and then 'sudo xcodebuild -runFirstLaunch`
3. Make sure you agree to the Xcode licence by running `sudo xcodebuild -llicense`  

*Set up the iOS simulator*
1. Find the Simulator using Spotlight or by running `open -a Simulator`  

*Create and Run a Flutter App*
1. Create your app by running `flutter create my_app`
2. Navigate into that directory using `cd my_app`
3. To launch the app in the Simulator, ensure that the Simulator is running and enter `flutter run`  

**Android Setup**  
*Install Android Studio*
1. Download and install Android Studio using this: https://developer.android.com/studio
2. Start Studio and go through the "Android Studio Setup Wizard" to install the latest SDK, command line tools, and buidl tools which are required by Flutter  

*Set up your Android Device*
...coming  

**VS Code**  
*Setting up VS Code*
1. Start VS Code
2. Invoke View > Command Palette
3. Type "install" and select Extensions: Install Extensions
4. Type "flutter" in the extensions search field, select Flutter in the list, and click Install (this also installs the required Dart plugin)
5. Validate your setup by invoking View > Command Palette and typing "doctor" then selecting Flutter: Run Flutter Doctor and review the output in the OUTPUT pane for any issues  

*Creating an app in VS Code*
1. Go to View > Command Palette
2. Select Flutter: New Application Project
3. Select the location for your project and name it

*Running an app in Simulator using VS Code*
1. When in a Flutter application, you will see "No Device" in the bottom left corner of the screen. Select that
2. Click iOS Simulator
3. Ensure the Simulator is running and then do Run > Start Debugging


### Resources
- https://medium.com/flutter/learning-flutters-new-navigation-and-routing-system-7c9068155ade
- https://www.codewithflutter.com/flutter-fetch-data-from-api-rest-api-example/
- https://blog.logrocket.com/how-to-create-search-bar-flutter/
- https://docs.flutter.dev/cookbook/navigation/passing-data
- https://medium.com/@dotronglong/sign-in-with-github-in-flutter-8649ab78f5d6
- https://github.com/settings/applications/new
- https://www.geeksforgeeks.org/splash-screen-in-flutter/
- https://www.youtube.com/watch?v=XXISgdYHdYw&t=162s
- https://medium.com/@aruny3/how-to-use-changenotifier-in-flutter-440371617b8c
- https://www.kindacode.com/article/flutter-listview-pagination-load-more/#The_Code
- https://www.javatpoint.com/flutter-switch
