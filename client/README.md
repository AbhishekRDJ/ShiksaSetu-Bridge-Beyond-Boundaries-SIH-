# LearnBridge

Connecting Teachers and Rural Students - A Flutter Frontend Application

## Overview

LearnBridge is a clean, modern Flutter application designed to facilitate connections between teachers and rural students. This project focuses on the entry flow screens with Material 3 design, responsive layouts, and smooth navigation.

## Features

- **Welcome Screen**: Clean landing page with app logo and navigation options
- **Role Selection**: Choose between Student, Teacher, or Admin roles
- **Sign Up Flow**: Complete registration with validation
- **Login Flow**: Secure login with form validation
- **Dashboard**: Role-based welcome screen
- **Guest Mode**: Continue without authentication
- **Modern UI**: Material 3 design with gradient backgrounds
- **Smooth Animations**: Slide transitions between screens
- **Form Validation**: Email format, password strength, and field validation

## Tech Stack

- **Flutter SDK**: >=3.0.0
- **Material 3**: Modern design system
- **Google Fonts**: Poppins typography
- **Provider**: State management
- **Animations Package**: Smooth screen transitions

## Project Structure

```
learnbridge/
├── lib/
│   ├── main.dart                    # App entry point with navigation
│   ├── screens/
│   │   ├── welcome_screen.dart      # Landing page
│   │   ├── role_selection_screen.dart  # Role chooser
│   │   ├── signup_screen.dart       # Registration form
│   │   ├── login_screen.dart        # Login form
│   │   └── dashboard_screen.dart    # Dashboard
│   ├── widgets/
│   │   ├── custom_button.dart       # Reusable button component
│   │   └── custom_textfield.dart    # Reusable text field
│   └── theme/
│       └── app_theme.dart           # App-wide theme configuration
├── assets/
│   ├── images/
│   └── icons/
├── pubspec.yaml
└── README.md
```

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- iOS Simulator (for iOS development) or Android Emulator

### Installation

1. **Clone or download this project**

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Platform-Specific Setup

**For Android:**
- Ensure Android SDK is installed
- Create an Android emulator or connect a physical device

**For iOS:**
- Requires macOS with Xcode installed
- Run `open -a Simulator` to launch iOS Simulator

**For Web:**
```bash
flutter run -d chrome
```

## Screens Flow

1. **Welcome Screen** → Login or Sign Up
2. **Role Selection** → Choose Student/Teacher/Admin
3. **Sign Up** → Create account with validation
4. **Login** → Enter credentials
5. **Dashboard** → Role-based welcome screen

## Key Features Breakdown

### Navigation
- Named routes with arguments
- Smooth shared axis transitions
- Back navigation support

### Validation
- Email format validation (regex)
- Password strength (minimum 6 characters)
- Confirm password matching
- Empty field checks
- Real-time error display

### Design Elements
- Gradient backgrounds
- Rounded cards and buttons
- Material 3 color scheme
- Custom typography (Google Fonts - Poppins)
- Responsive padding and spacing
- Icon support throughout

## Configuration

### Theme Customization
Edit `lib/theme/app_theme.dart` to customize:
- Primary and secondary colors
- Typography styles
- Input field appearance
- Button styles
- Card designs

### Adding Assets
Place images in `assets/images/` and icons in `assets/icons/`, then update `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/images/your_image.png
    - assets/icons/your_icon.png
```

## Note

This is a **frontend-only** project. No backend integration or Firebase authentication is included. All validations and navigation are handled on the client side for demonstration purposes.

## Future Enhancements

- Backend integration
- Real authentication with Firebase/Supabase
- User profile management
- Course catalog
- Chat functionality
- Video conferencing
- Assignment management

## License

This project is created for educational purposes.

## Support

For issues or questions, please refer to the Flutter documentation:
- [Flutter Documentation](https://docs.flutter.dev/)
- [Material 3 Design](https://m3.material.io/)
