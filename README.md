# Food Delivery App

[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/Ahmed-Ebrahim17/food_delivery/tree/development)

This is a cross-platform food delivery application built with Flutter. The project is structured with a focus on scalability and maintainability, utilizing a feature-based architecture and the BLoC pattern for state management.

## Features

-   **Cross-Platform:** A single codebase for Android, iOS, Web, Windows, macOS, and Linux.
-   **Responsive Design:** The UI is designed to adapt to various screen sizes and orientations using `flutter_screenutil`.
-   **Scalable Architecture:** Built with a feature-first approach, separating business logic from UI.
-   **State Management:** Utilizes `flutter_bloc` for predictable and robust state management.
-   **Custom Theming:** Centralized theme management for consistent styling across the application.
-   **Navigation:** A dedicated routing system for managing navigation and deep linking.

## Project Structure

The project follows a clean, feature-driven directory structure to promote separation of concerns.

```
lib/
├── core/
│   ├── helpers/         # Extension methods and helper functions (e.g., spacing)
│   ├── routing/         # App routing logic and route definitions (AppRouter)
│   └── theming/         # App-wide colors, styles, and font management
├── features/
│   └── onBoarding/      # Onboarding feature module
├── food_app.dart        # Root application widget
└── main.dart            # Application entry point
```

## Getting Started

### Prerequisites

-   [Flutter SDK](https://flutter.dev/docs/get-started/install) (version >= 3.10.1)
-   An IDE such as [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/) with the Flutter plugin.

### Installation & Usage

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/Ahmed-Ebrahim17/food_delivery.git
    cd food_delivery
    ```

2.  **Install dependencies:**
    ```sh
    flutter pub get
    ```

3.  **Run the application:**
    ```sh
    flutter run
    ```

## Core Dependencies

This project relies on several key packages to function:

-   [**flutter_bloc**](https://pub.dev/packages/flutter_bloc): For state management using the BLoC (Business Logic Component) pattern.
-   [**flutter_screenutil**](https://pub.dev/packages/flutter_screenutil): For adapting screen and font sizes to ensure a responsive UI.
-   [**intl**](https://pub.dev/packages/intl): Provides internationalization and localization facilities.
-   [**flutter_native_splash**](https://pub.dev/packages/flutter_native_splash): For customizing the native splash screen.
