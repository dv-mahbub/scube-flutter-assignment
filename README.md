# SCUBE Flutter Assignment

![Flutter](https://img.shields.io/badge/Flutter-3.35.6-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.0-0175C2?logo=dart)

This is the submission for the **SCUBE Flutter Developer Assignment**. The project demonstrates a modular architecture, custom UI components, and smooth animations.

## 🛠 Project Configuration

This project uses **FVM (Flutter Version Management)** to ensure a consistent development environment.

- **Flutter SDK**: `3.35.6`
- **Dart SDK**: `^3.9.2`

## 🚀 Getting Started

Follow these steps to run the project locally.

### Prerequisites

Ensure you have **FVM** installed:
```bash
dart pub global activate fvm
```

### Installation

1.  **Clone the repository:**
    ```bash
    git clone <repository-url>
    cd scube-flutter-assignment
    ```

2.  **Install dependencies:**
    ```bash
    fvm flutter pub get
    ```

3.  **Run the App:**
    ```bash
    fvm flutter run
    ```

## 📦 Features Implemented

- **Splash Screen**: Custom animated intro.
- **Login Page**:
    - Custom UI layout.
    - **Animated Bottom Sheet**: Automatically appears on initialization with a slow slide-up animation.
- **Architecture**: Structured using a feature-first approach with Clean Architecture principles.

## 📂 Project Structure

```
lib/
├── core/           # Theming, constants, and utilities
├── features/       # Feature modules (Login, Splash, widgets)
└── main.dart       # Entry point
```
