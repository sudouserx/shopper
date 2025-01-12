# Shopper - Flutter E-commerce Mobile App

Shopper is a beautifully designed and feature-rich Flutter e-commerce mobile app that provides users with an intuitive shopping experience.

## Features
- **Modern UI/UX**: Sleek and user-friendly design with gradient backgrounds and animations.
- **Navigation**: Integrated with `google_nav_bar` for bottom navigation.
- **Animated Intro**: Uses `lottie` animations for an engaging splash screen.
- **Product Listing**: Dynamic pages for shopping and saved items.
- **Interactive UI**: Includes product ratings using `flutter_rating`.
- **State Management**: Simple and effective use of `provider` for state management.

## Screenshots
 ![App Icon](https://github.com/user-attachments/assets/247f008d-f3dd-4e0d-baf2-7fa183bd7afb)

 [Screencast](https://github.com/user-attachments/assets/fee7ddbe-b952-40bd-ad41-125823940ca9)

## Installation

### Prerequisites
- Flutter SDK installed ([Get Flutter](https://flutter.dev/docs/get-started/install))
- Android Studio or Visual Studio Code

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/sudouserx/shopper.git
   ```
2. Navigate to the project directory:
   ```bash
   cd shopper
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Dependencies
The app relies on the following Flutter packages:

| Package           | Description                                                  |
|-------------------|--------------------------------------------------------------|
| `lottie`          | For adding engaging animations to the app.                   |
| `provider`        | Lightweight state management solution for Flutter.           |
| `google_nav_bar`  | Provides a customizable and sleek bottom navigation bar.     |
| `flutter_rating`  | For displaying interactive product ratings.                  |

Add these dependencies to your `pubspec.yaml`:
```yaml
  lottie: ^<latest_version>
  provider: ^<latest_version>
  google_nav_bar: ^<latest_version>
  flutter_rating: ^<latest_version>
```

## Folder Structure
```
lib
├── components
│   ├── bottom_nav_bar.dart      # Custom Bottom Navigation Bar
│   ├── my_button.dart           # Reusable Button Widget
├── pages
│   ├── home_page.dart           # Home Page with Navigation
│   ├── intro_page.dart          # Introductory Page with Animation
│   ├── saved_item_page.dart     # Saved Items Page
│   ├── shop_page.dart           # Shop Page
├── main.dart                    # Entry Point of the App
```

## How to Contribute
We welcome contributions to improve the app! To contribute:
1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add your feature"
   ```
4. Push to your branch:
   ```bash
   git push origin feature/your-feature-name
   ```
5. Open a pull request.

## Contact
If you have any questions or suggestions, feel free to reach out:
- **Email**: ebrahimaliyou@gmail.com
- **GitHub**: [@sudouserx](https://github.com/sudouserx)

