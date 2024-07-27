# Firebase and Flutter Authentication - DP Education

## Features

- **Authentication**: 
  - **Email/Password**: Sign in with email and password.
  - **Google Sign-In**: Authenticate using Google.
  - **GitHub Sign-In**: Authenticate using GitHub.
  - **Email Link Sign-In**: Sign in using a link sent to the user's email.
- **Password Recovery**:
  - **Reset Password**: Users can reset their passwords via email.
  - **Email Verification**: Users can verify their email addresses.
- **Responsive UI**: Optimized for both mobile and tablet devices.

## Getting Started

### Prerequisites

Ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)
- [Firebase setup for your project](https://firebase.google.com/docs/flutter/setup)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/HGSChandeepa/Firebase-Flutter-Auth
   ```

2. Navigate to the project directory:

   ```bash
   cd Firebase-Flutter-Auth
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Set up Firebase for your project by following the instructions in [Firebase Documentation](https://firebase.google.com/docs/flutter/setup).

5. Replace the `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS) in the `android/app` and `ios/Runner` directories, respectively.

### Running the App

To run the app on an emulator or physical device, use:

```bash
flutter run
```

### Testing

To run tests, use:

```bash
flutter test
```

## Authentication

### Google Sign-In

Users can authenticate using their Google account. Ensure that Google Sign-In is enabled in your Firebase project and that the necessary configurations are set up.

### GitHub Sign-In

Users can authenticate using their GitHub account. Ensure that GitHub authentication is enabled in your Firebase project and that the necessary configurations are set up.

### Email Link Sign-In

Users can sign in using a link sent to their email address. Make sure email link sign-in is configured in your Firebase project.

## Password Management

### Password Recovery

Users can reset their passwords via an email link sent to their registered email address. Ensure that password reset functionality is enabled in your Firebase project.

### Email Verification

Users can verify their email addresses to confirm their account. Ensure email verification is enabled in your Firebase project.

## Usage

1. **Sign In**: Users can sign in using email and password, Google, GitHub, or an email link.
2. **Sign Up**: New users can register using email and password.
3. **Password Recovery**: Users can reset their passwords by requesting an email link.
4. **Email Verification**: Users can verify their email addresses by following the link sent to their email.

## Contributing

If you want to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/YourFeature`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Create a new Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
