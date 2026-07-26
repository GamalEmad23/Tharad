# Tharad

Tharad is an Arabic-first Flutter application with right-to-left (RTL) layout support. The current version focuses on the core authentication UI, including splash, sign up, and login screens with reusable custom widgets.

## Project Overview

The app currently includes:

- Splash screen with app logo and loading indicator.
- Automatic navigation from the splash screen to the sign up screen after 3 seconds.
- Sign up screen.
- Login screen.
- Custom text fields for username, email, and password inputs.
- Password visibility toggle.
- Profile image upload placeholder on the sign up screen.
- Centralized color palette through `AppColors`.
- Image assets loaded from `assets/images`.

## Built With

- Flutter
- Dart
- Material Design

## Requirements

Make sure you have the following installed:

- Flutter SDK
- Dart SDK
- Android Studio or VS Code
- Android/iOS emulator or a connected physical device

Check your Flutter setup with:

```bash
flutter doctor
```

## Getting Started

Install project dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

Run tests:

```bash
flutter test
```

## Project Structure

```text
lib/
+-- main.dart
+-- core/
|   +-- themes/
|   |   +-- color/
|   |       +-- app_colors.dart
|   +-- widgets/
|       +-- custome_button.dart
|       +-- custome_text.dart
|       +-- dottedBorder/
+-- features/
    +-- splash/
    |   +-- view/
    |       +-- splash_screen.dart
    +-- auth/
        +-- view/
            +-- login_screen.dart
            +-- sign_up_screen.dart
            +-- widgets/
```

## Current Screens

### Splash Screen

Displays the application logo from:

```text
assets/images/logo.png
```

Then navigates automatically to the sign up screen.

### Sign Up Screen

Includes:

- App logo.
- Sign up title.
- Profile image upload area.
- Username field.
- Email field.
- Password field.
- Confirm password field.
- Main sign up button.
- Link to navigate to the login screen.

### Login Screen

Includes:

- App logo.
- Login title.
- Email field.
- Password field.
- Main action button.
- Link to navigate to the sign up screen.

## Assets

Image assets are stored in:

```text
assets/images/
```

The assets directory is registered in `pubspec.yaml`:

```yaml
assets:
  - assets/images/
```

## Current Status

This project currently contains the UI layer only. Authentication logic, backend integration, form validation, and image picking functionality have not been implemented yet.

## Development Notes

- RTL layout is configured globally in `MaterialApp`.
- App colors are defined in `lib/core/themes/color/app_colors.dart`.
- Reusable UI components are available for buttons, text, and input fields.
- The current widget test is still the default Flutter counter test and should be updated to match the existing app screens.
