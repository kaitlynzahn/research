# Flutter Research for Augur

### Screenshots/Demo

## Documentation

### Getting Started with Flutter

*Installing Flutter for Mac* \n
https://flutter.dev/docs/get-started/install/macos

**System Requirements:**
- Operating Systems:  macOS (64-bit)
- Disk Space: 2.8 GB
- Tools: git, Xcode (recommended)

**Download Flutter SDK**
https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_2.0.6-stable.zip

Download the above zip file and unzip it in your desired location. Add the Flutter tool to your path using 'export PATH="$PATH:`pwd`/flutter/bin"' & now you can run Flutter commands! Run 'flutter doctor' to see if there are any dependencies you need to install to complete setup.

**Update Path**
Update your PATH so that you can use Flutter commands in any terminal session. Do so by following these steps:
1. Determine the path of your clone of the FLutter SDK
2. Open or create the rc file for your shell (type 'echo $SHELL' to find out what shell you're using
- If you're using Bash, edit $HOME/.bash_profile or $HOME/.bashrc
- If you're using Z shell, edit $HOME/.zshrc
- If you're using a different shell, the file path and filename will be different on your machine
3. Add the following line 'export PATH="$PATH:[PATH_OF_FLUTTER_GIT_DIRECTORY]/bin"' and change [PATH_OF_FLUTTER_GIT_DIRECTORY] to be the path of your clone of the Flutter git repo
4. Run 'source $HOME/.<rc file> to refresh the window
5. Verify that the flutter/bin directory is in your path by running 'echo $PATH'
6. And finally, verify that Flutter commands are available by running 'which flutter'


### Running Flutter
**iOS Setup**
*Installing Xcode*
1. Install the latest stable version of Xcode in the app store or using this web download: https://developer.apple.com/xcode/
2. Configure Xcode command line tools by running 'sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer' and then 'sudo xcodebuild -runFirstLaunch'
3. Make sure you agree to the Xcode licence by running 'sudo xcodebuild -llicense'

*Set up the iOS simulator*
1. Find the Simulator using Spotlight or by running 'open -a Simulator'

*Create and Run a Flutter App*
1. Create your app by running 'flutter create my_app'
2. Navigate into that directory using 'cd my_app'
3. To launch the app in the Simulator, ensure that the Simulator is running and enter 'flutter run'

**Android Setup**
*Install Android Studio*
1. Download and install Android Studio using this: https://developer.android.com/studio
2. Start Studio and go through the "Android Studio Setup Wizard" to install the latest SDK, command line tools, and buidl tools which are required by Flutter

*Set up your Android Device*
...coming


### Tutorials

### Helpful Hints
