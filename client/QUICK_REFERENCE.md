# LearnBridge - Quick Reference Card

## 🚀 Quick Start

```bash
# Install dependencies
flutter pub get

# Run the app
flutter run

# For web
flutter run -d chrome
```

## 📱 Screens

| Screen | Route | Purpose |
|--------|-------|---------|
| Welcome | `/welcome` | Landing page |
| Role Selection | `/role-selection` | Choose user role |
| Sign Up | `/signup` | User registration |
| Login | `/login` | User authentication |
| Dashboard | `/dashboard` | Main app screen |

## 🎨 Design System

### Colors
```dart
Primary:    #6366F1 (Indigo)
Secondary:  #8B5CF6 (Purple)
Error:      #EF4444 (Red)
Success:    #10B981 (Green)
```

### Typography
- **Font**: Poppins (Google Fonts)
- **Headings**: 28-36px, Bold
- **Body**: 14-16px, Regular

## 🛠️ Key Components

### Custom Button
```dart
CustomButton(
  text: 'Click Me',
  onPressed: () {},
  isOutlined: false,  // or true for outlined style
  icon: Icons.check,
)
```

### Custom TextField
```dart
CustomTextField(
  label: 'Email',
  hint: 'Enter email',
  controller: emailController,
  prefixIcon: Icons.email,
  validator: (value) => 'Error message',
)
```

## 🔐 Validation Rules

| Field | Rule |
|-------|------|
| Name | Min 3 characters |
| Email | Valid format (regex) |
| Password | Min 6 characters |
| Confirm | Must match password |

**Email Regex**: `^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$`

## 🗺️ Navigation Flow

```
Welcome
  ├─→ Login → Dashboard
  ├─→ Role Selection → Sign Up → Dashboard
  └─→ Dashboard (Guest)
```

## 📦 Dependencies

```yaml
google_fonts: ^6.2.0    # Typography
provider: ^6.1.1        # State management
animations: ^2.0.8      # Screen transitions
```

## 🎭 User Roles

| Role | Icon | Color |
|------|------|-------|
| Student | 🎓 school | Blue #6366F1 |
| Teacher | 👤 person | Purple #8B5CF6 |
| Admin | 🛡️ admin_panel | Pink #EC4899 |
| Guest | 👥 person_outline | Gray #64748B |

## 🔧 Common Commands

```bash
# Check Flutter setup
flutter doctor

# List devices
flutter devices

# Clean build
flutter clean

# Build APK
flutter build apk --release

# Hot reload (in terminal while running)
r  # Hot reload
R  # Hot restart
q  # Quit
```

## 📂 File Structure

```
lib/
├── main.dart              # Entry point
├── screens/              # All screens
│   ├── welcome_screen.dart
│   ├── role_selection_screen.dart
│   ├── signup_screen.dart
│   ├── login_screen.dart
│   └── dashboard_screen.dart
├── widgets/              # Reusable components
│   ├── custom_button.dart
│   └── custom_textfield.dart
└── theme/               # App theme
    └── app_theme.dart
```

## 🎯 Testing Checklist

- [ ] All screens load correctly
- [ ] Navigation works both ways
- [ ] Form validation shows errors
- [ ] Password visibility toggle works
- [ ] Role selection passes data
- [ ] Logout confirmation works
- [ ] Animations are smooth
- [ ] Responsive on different screens

## 🐛 Troubleshooting

| Problem | Solution |
|---------|----------|
| Flutter not found | Install Flutter SDK |
| Packages error | Run `flutter pub get` |
| No devices | Start emulator/simulator |
| Fonts not loading | Check internet connection |
| Build error | Run `flutter clean` |

## 🔗 Useful Links

- [Flutter Docs](https://docs.flutter.dev/)
- [Material 3](https://m3.material.io/)
- [Google Fonts Package](https://pub.dev/packages/google_fonts)
- [Provider Package](https://pub.dev/packages/provider)

## 💡 Pro Tips

1. **Hot Reload**: Press `r` for instant updates
2. **Debug**: Use Flutter DevTools for debugging
3. **Layout**: Use Flutter Inspector to check widget tree
4. **Performance**: Test with `--release` flag
5. **Assets**: Add images to `assets/` folder

## 📝 Customization Quick Guide

### Change Primary Color
`lib/theme/app_theme.dart` → Update `primaryColor`

### Change Font
`lib/theme/app_theme.dart` → Update `GoogleFonts.poppinsTextTheme()`

### Add Logo
1. Add image to `assets/images/`
2. Update `pubspec.yaml`
3. Use `Image.asset('assets/images/logo.png')`

### Modify Validation
Update validators in `signup_screen.dart` and `login_screen.dart`

## 🎨 Animation Details

- **Type**: SharedAxisTransition (horizontal)
- **Duration**: 400ms
- **Effect**: Smooth slide between screens

## 📊 App Statistics

- **Total Screens**: 5
- **Custom Widgets**: 2
- **Routes**: 5
- **Dependencies**: 3
- **Lines of Code**: ~1,000+
- **Material Version**: Material 3

---

**Version**: 1.0.0
**Last Updated**: 2025
**Status**: Frontend Complete ✅
