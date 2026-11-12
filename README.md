# gonzales_mobprog

A new Flutter project.
# Laboratory Discussion

### 1. What challenges did you encounter while installing or configuring Flutter?
During the initial setup of the Flutter development environment, the primary challenge involved missing Android SDK dependencies and selecting the appropriate target platform for building the application. Although Android Studio and the base Android SDK (version 36.1.0) were installed, Flutter could not immediately locate the command-line tools required to verify SDK licenses. Additionally, when attempting to run the project via the terminal, selecting the Windows desktop target resulted in a build failure because the full Visual Studio C++ desktop toolchain was not installed.

### 2. Did you encounter any errors when running `flutter doctor`?
Yes, running `flutter doctor` initially flagged issues in two categories:
* **Android toolchain:** Reported `cmdline-tools component is missing` and `Android license status unknown`. Attempting to run `flutter doctor --android-licenses` produced the error: `Android sdkmanager not found. Update to the latest Android SDK and ensure that the cmdline-tools are installed to resolve this.`
* **Visual Studio:** Reported missing C++ build tools (`MSVC v142`, `C++ CMake tools for Windows`, and `Windows 10 SDK`) required for developing native Windows desktop applications.

### 3. How did you resolve installation, dependency, SDK, or device-related issues?
* **SDK & License Resolution:** I opened Android Studio's **SDK Manager**, navigated to the **SDK Tools** tab, and installed **Android SDK Command-line Tools (latest)**. Once installed, I re-ran `flutter doctor --android-licenses` in the terminal and accepted all SDK package licenses, which resolved the Android toolchain warning.
* **Device & Build Target Resolution:** Since the lab focuses on mobile and initial web testing rather than Windows desktop executables, I bypassed the Visual Studio C++ warning. When `flutter run` failed after selecting `[1]: Windows (windows)` (`Error: Unable to find suitable Visual Studio toolchain`), I resolved the device-related error by targeting Chrome (`flutter run -d chrome`).

### 4. What did you learn about configuring a Flutter development environment?
I learned that installing the Flutter SDK and Android Studio alone is not enough for a functional build pipeline—specific sub-components like the Android SDK Command-line Tools must be explicitly installed and licensed before Flutter can interact with the Android SDK. I also learned how `flutter doctor` categorizes platform-specific toolchains independently, allowing developers to focus only on the dependencies needed for their intended target platforms (such as Android or Web) while safely ignoring unrelated desktop toolchains.

### 5. What practices will you follow to make future Flutter development easier?
* Always run `flutter doctor -v` after updating Flutter, Android Studio, or SDK packages to catch missing dependencies or unaccepted licenses early.
* Explicitly specify the target device ID when running projects from the terminal (e.g., `flutter run -d chrome` or targeting an active emulator ID) to avoid accidentally triggering builds for unconfigured platforms like Windows desktop.
* Keep an Android Virtual Device (AVD) pre-configured and updated in Android Studio so it can be launched immediately before starting a coding session.