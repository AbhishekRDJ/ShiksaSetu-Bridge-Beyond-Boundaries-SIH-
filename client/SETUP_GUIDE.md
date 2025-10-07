# LearnBridge Setup Guide

## Quick Start Guide

Follow these steps to get the LearnBridge app running on your local machine.

## Step 1: Prerequisites

Make sure you have Flutter installed on your system. If not, follow the official Flutter installation guide:
- **Flutter Installation**: https://docs.flutter.dev/get-started/install

Verify your installation:
```bash
flutter --version
flutter doctor
```

## Step 2: Setup Project

1. **Navigate to the project directory**
   ```bash
   cd /path/to/learnbridge
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

   This will download all required packages:
   - google_fonts (for Poppins typography)
   - provider (for state management)
   - animations (for screen transitions)

## Step 3: Run the App

### Option A: Using Command Line

**For Android/iOS:**
```bash
flutter run
```

**For Web:**
```bash
flutter run -d chrome
```

**For specific device:**
```bash
# List available devices
flutter devices

# Run on specific device
flutter run -d <device-id>
```

### Option B: Using IDE

**Visual Studio Code:**
1. Open the project folder
2. Press `F5` or click "Run and Debug"
3. Select your target device

**Android Studio:**
1. Open the project
2. Select target device from toolbar
3. Click the Run button (green play icon)

## Step 4: Test the App Flow

Once the app is running, test the following flow:

1. **Welcome Screen**:
   - Click "Login" to go to Login screen
   - Click "Sign Up" to start registration
   - Click "Continue as Guest" for guest mode

2. **Sign Up Flow**:
   - Select a role (Student/Teacher/Admin)
   - Fill in registration form
   - Create account

3. **Login Flow**:
   - Enter email and password
   - Login to dashboard

4. **Dashboard**:
   - View welcome message with selected role
   - Test logout functionality

## Troubleshooting

### Common Issues

**Issue: "Flutter not found"**
- Solution: Install Flutter SDK and add to PATH

**Issue: "Packages not found"**
- Solution: Run `flutter pub get`

**Issue: "SDK version mismatch"**
- Solution: Run `flutter upgrade` or check `pubspec.yaml`

**Issue: "No devices available"**
- Solution:
  - For Android: Start an emulator
  - For iOS: Open Simulator (macOS only)
  - For Web: Run with `-d chrome`

**Issue: "Google Fonts not loading"**
- Solution: Ensure internet connection (fonts are downloaded on first use)
- Alternative: Use system fonts in `app_theme.dart`

### Check Flutter Environment

```bash
# Check Flutter installation
flutter doctor -v

# Check connected devices
flutter devices

# Clean build cache
flutter clean
flutter pub get
```

## Project Structure Overview

```
learnbridge/
├── lib/
│   ├── main.dart                 # Entry point
│   ├── screens/                  # All app screens
│   ├── widgets/                  # Reusable components
│   └── theme/                    # Theme configuration
├── assets/                       # Images and icons
├── pubspec.yaml                  # Dependencies
└── README.md                     # Documentation
```

## Development Tips

### Hot Reload
- Press `r` in terminal to hot reload
- Press `R` for hot restart
- Press `q` to quit

### Debug Mode
The app runs in debug mode by default. For better performance testing:
```bash
flutter run --release
```

### Building APK (Android)
```bash
flutter build apk --release
```

### Building IPA (iOS)
```bash
flutter build ios --release
```

## Customization

### Change Theme Colors
Edit `lib/theme/app_theme.dart`:
```dart
static const Color primaryColor = Color(0xFF6366F1);
static const Color secondaryColor = Color(0xFF8B5CF6);
```

### Change Typography
Edit `lib/theme/app_theme.dart`:
```dart
textTheme: GoogleFonts.poppinsTextTheme(),
// Replace with: GoogleFonts.robotoTextTheme() or others
```

### Add App Logo
1. Place your logo in `assets/images/logo.png`
2. Update `pubspec.yaml` if needed
3. Update `welcome_screen.dart` to use the image

## Next Steps

Once you have the app running:
1. Explore each screen
2. Test form validation
3. Try different navigation paths
4. Experiment with theme customization
5. Add your own features

## Support Resources

- **Flutter Docs**: https://docs.flutter.dev/
- **Material 3**: https://m3.material.io/
- **Google Fonts**: https://pub.dev/packages/google_fonts
- **Provider**: https://pub.dev/packages/provider

## Need Help?

If you encounter issues:
1. Check `flutter doctor` output
2. Verify all dependencies are installed
3. Ensure device/emulator is running
4. Check Flutter version compatibility
5. Review error messages carefully

Happy Coding!
