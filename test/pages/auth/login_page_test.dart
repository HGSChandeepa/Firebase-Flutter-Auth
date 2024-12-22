import 'package:authfire/pages/auth/forgot_password_page.dart';
import 'package:authfire/pages/auth/register.dart';
import 'package:authfire/pages/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LoginPage Widget Tests', () {
    testWidgets('Should display all essential widgets',
        (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(
        const MaterialApp(
          home: LoginPage(),
        ),
      );

      // Act & Assert
      // Verify that AppBar title is displayed
      expect(find.widgetWithText(AppBar, 'Login'), findsOneWidget);

      // Verify that Login button is displayed
      expect(find.widgetWithText(ElevatedButton, 'Login'), findsOneWidget);

      // Verify that Sign in with Google button is displayed
      expect(find.widgetWithText(ElevatedButton, 'Sign in with Google'),
          findsOneWidget);

      // Verify that Sign in with GitHub button is displayed
      expect(find.widgetWithText(ElevatedButton, 'Sign in with GitHub'),
          findsOneWidget);

      // Verify that Forgot Password button is displayed
      expect(
          find.widgetWithText(TextButton, 'Forgot Password?'), findsOneWidget);

      // Verify that Register button is displayed
      expect(
          find.widgetWithText(
              TextButton, 'Don\'t have an account? Register here'),
          findsOneWidget);

      // Verify that email and password fields are present
      expect(find.byType(TextFormField), findsNWidgets(2));
    });

    testWidgets(
        'Should navigate to ForgotPasswordPage on "Forgot Password?" click',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LoginPage()));

      // Tap the "Forgot Password?" button
      await tester.tap(find.text('Forgot Password?'));
      await tester.pumpAndSettle();

      // Verify navigation to ForgotPasswordPage
      expect(find.byType(ForgotPasswordPage), findsOneWidget);
    });

    testWidgets('Should navigate to RegisterPage on "Register here" click',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LoginPage()));

      // Tap the "Register here" button
      await tester.tap(find.text('Don\'t have an account? Register here'));
      await tester.pumpAndSettle();

      // Verify navigation to RegisterPage
      expect(find.byType(RegisterPage), findsOneWidget);
    });

    testWidgets('Should show error for empty email and password fields',
        (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(
        const MaterialApp(
          home: LoginPage(),
        ),
      );

      // Act
      // Find and tap the Login button
      final loginButton = find.widgetWithText(ElevatedButton, 'Login');
      await tester.tap(loginButton);

      // Rebuild the widget after the state change
      await tester.pump();

      // Assert
      // Verify the error message is shown
      expect(find.text('Email is required'), findsOneWidget);
      expect(find.text('Password is required'), findsOneWidget);
    });

    testWidgets('Should show loading indicator when signing in',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LoginPage()));

      // Enter valid email and password
      await tester.enterText(
          find.byType(TextFormField).first, 'test@example.com');
      await tester.enterText(find.byType(TextFormField).last, 'password123');

      // Tap the Login button
      await tester.tap(find.text('Login'));
      await tester.pump();

      // Verify the loading indicator is displayed
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('Should validate email format', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LoginPage()));

      // Enter invalid email
      await tester.enterText(find.byType(TextFormField).first, 'invalid-email');
      await tester.tap(find.text('Login'));
      await tester.pump();

      // Verify validation error message
      expect(find.text('Please enter a valid email'), findsOneWidget);
    });
  });
}
