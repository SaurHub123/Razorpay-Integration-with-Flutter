### `README.md`

```markdown
# Razorpay Integration with Flutter

![License](https://img.shields.io/badge/License-MIT-blue.svg)

This repository demonstrates how to integrate Razorpay, a popular payment gateway, into a Flutter application. It allows seamless payment processing for various use cases in your Flutter app, including credit/debit cards, UPI, wallets, and more.

## Features
- Simple integration of Razorpay with Flutter.
- Supports multiple payment methods (credit/debit cards, net banking, UPI, wallets).
- Sample UI and code to handle payments securely.
- Fully customizable payment flow for both Android and iOS.

## Prerequisites
Before you begin, make sure you have the following installed:
- **Flutter**: Follow the installation guide on the [Flutter website](https://flutter.dev/docs/get-started/install).
- **Android Studio / Xcode** (for Android and iOS app development).
- **Razorpay Account**: Create an account at [Razorpay](https://razorpay.com/).

## Clone the Repository

To get started, clone the repository to your local machine:

```bash
git clone https://github.com/SaurHub123/Razorpay-Integration-with-Flutter.git
```

## Steps to Set Up the Project

### 1. Install Dependencies

Navigate into the cloned repository folder:

```bash
cd Razorpay-Integration-with-Flutter
```

Then, run the following command to install all required dependencies:

```bash
flutter pub get
```

This command will install all necessary packages listed in `pubspec.yaml`.

### 2. Replace Razorpay Key

To integrate Razorpay, you need to replace the Razorpay key with your own API key. Follow these steps:

- Go to your Razorpay Dashboard at [Razorpay Dashboard](https://dashboard.razorpay.com/).
- Obtain your **Test/Live API key**.
- In the Flutter project, locate the code where the Razorpay key is set (typically within the payment-related code).
  
  Open `lib/paymentGateway.dart` or the relevant file that contains the Razorpay integration and find the line with the placeholder Razorpay key:
  
  ```dart
  'key': 'your-razorpay-key',
  ```

- Replace `'your-razorpay-key'` with your actual Razorpay API key.

### 3. Configure Android and iOS Permissions

#### For Android:
- Open `android/app/src/main/AndroidManifest.xml` and ensure you have the necessary permissions set, such as internet access.
  
#### For iOS:
- Open `ios/Runner/Info.plist` and configure necessary permissions for iOS apps.
  
  You may need to add the following entry to handle payment processing correctly:

  ```xml
  <key>NSAppTransportSecurity</key>
  <dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
  </dict>
  ```

### 4. Run the App

Now that all dependencies are resolved, and the API key is set up, you can run the app on an emulator or a real device:

For Android:

```bash
flutter run
```

For iOS (macOS required):

```bash
flutter run -d ios
```

### 5. Testing Payments

The app should now be ready to test. When you click the "Pay Now" button, it will trigger the Razorpay payment gateway. Ensure you are using a test Razorpay API key and testing with the Razorpay sandbox environment.

### 6. Troubleshooting

If you encounter issues while running the app, try the following:
- Ensure your Flutter environment is correctly set up. Run `flutter doctor` to check for issues.
- Ensure your Razorpay API key is correct and you're using the sandbox environment for testing.
- Ensure you have a stable internet connection for the payment gateway to work.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any queries or support, feel free to reach out:

**Name**: Saurabh Kumar  
**Email**: [Saurabhbadal7262@gmail.com](mailto:Saurabhbadal7262@gmail.com)
```

---