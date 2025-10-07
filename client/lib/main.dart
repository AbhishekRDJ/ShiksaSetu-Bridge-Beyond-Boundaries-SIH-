import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'theme/app_theme.dart';
import 'screens/welcome_screen.dart';
import 'screens/role_selection_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const LearnBridgeApp());
}

class LearnBridgeApp extends StatelessWidget {
  const LearnBridgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LearnBridge',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/welcome',
      onGenerateRoute: (settings) {
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) {
            switch (settings.name) {
              case '/welcome':
                return const WelcomeScreen();
              case '/role-selection':
                return const RoleSelectionScreen();
              case '/signup':
                return const SignupScreen();
              case '/login':
                return const LoginScreen();
              case '/dashboard':
                return const DashboardScreen();
              default:
                return const WelcomeScreen();
            }
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SharedAxisTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 400),
        );
      },
    );
  }
}
