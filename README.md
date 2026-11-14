## Lab Activity 0B: Discussion

### 1. Experience Creating and Running the First Flutter Application
Creating and running my first Flutter application using Visual Studio Code was straightforward once the environment was properly configured. After setting up the project directory (`gonzales_mobprogAY2627/gonzales_mobprog`) and generating the starter project template, executing the app allowed me to see how Flutter compiles Dart code (`lib/main.dart`) into a live, interactive interface across supported target devices.

### 2. Challenges Encountered with Dependencies, SDK Configuration, or Device Selection
The main challenges involved missing Android SDK command-line dependencies and selecting an appropriate target device during execution. Although Android Studio and Android SDK 36.1.0 were already installed, the environment lacked the specific command-line tools needed to manage SDK licenses. Additionally, when running `flutter run` in the terminal, choosing the default Windows desktop option caused a build failure because the Visual Studio C++ desktop workload was not installed.

### 3. Errors Encountered and Troubleshooting Steps Performed
* **Missing Android Command-Line Tools & Licenses:** Running `flutter doctor` flagged `cmdline-tools component is missing` and `Android license status unknown`, while `flutter doctor --android-licenses` returned `Android sdkmanager not found`. I resolved this by opening Android Studio's **SDK Manager** -> **SDK Tools**, installing **Android SDK Command-line Tools (latest)**, and re-running `flutter doctor --android-licenses` to accept all SDK licenses.
* **Windows Toolchain / Device Selection Error:** Selecting `[1]: Windows (windows)` during `flutter run` resulted in `Error: Unable to find suitable Visual Studio toolchain`. Since the activity targets mobile and web testing rather than native Windows desktop executables, I resolved this by running the app on Chrome (`flutter run -d chrome`) / an Android Virtual Device instead.

### 4. What I Learned About Executing Flutter Applications
I learned that Flutter supports multiple target platforms (Android, Web, and Desktop) from a single codebase, and each target relies on its own platform-specific toolchain. Running `flutter doctor` helps isolate which toolchains are ready, while specifying the exact target device during `flutter run` ensures Flutter builds for an active, properly configured environment without triggering errors from unrelated desktop toolchains.

### 5. Best Practices for Future Mobile Development Activities
* Run `flutter doctor` before starting new projects or after SDK updates to ensure all required mobile toolchains and licenses remain valid.
* Explicitly pass the target device ID when launching from the terminal (e.g., `flutter run -d chrome` or an active Android Emulator ID) to avoid accidental builds on unconfigured platforms.
* Keep an Android Virtual Device (AVD) initialized in Android Studio prior to running the project so mobile testing is immediate and seamless.