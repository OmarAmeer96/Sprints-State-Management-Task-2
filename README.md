# Sprints State Management Task 2 (Cubit)

This is a Flutter app demonstrating the use of **Cubit** for state management. It includes:

- A `CounterCubit` to manage a counter value.
- Buttons to increment and decrement the counter.
- A SnackBar when the counter reaches 10 or -10.
- A dialog when the counter becomes negative.

## Features

- Increment and decrement the counter using floating action buttons.
- Show a SnackBar when the counter reaches 10 or -10.
- Show a dialog when the counter becomes negative.

## App Demo Video 🎥

[Watch the localization demo video here](https://github.com/user-attachments/assets/7d66fdfb-d738-48df-9219-c7862b615a16)

## Screenshots

| Default State      | Negative Warning      | Reach 10      | Reach -10      |
| --------------- | ---------------- | ------------------ | ----------------------- |
| ![Default State](https://github.com/user-attachments/assets/1f37a689-1e60-44fe-ab30-11d8bf60c995) | ![Negative Warning](https://github.com/user-attachments/assets/d10e0064-74d4-4e80-8a63-416b645a88b8) | ![Reach 10](https://github.com/user-attachments/assets/9af6fd51-6457-416e-842d-8b7d16c34e8c) | ![Reach -10](https://github.com/user-attachments/assets/42e81cf2-3c5d-43f3-bad0-c5afcaa3c70a) |

---

## Getting Started

### Prerequisites

- Flutter SDK installed on your machine.
- An IDE (e.g., Android Studio, VS Code) with Flutter and Dart plugins installed.

### Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/OmarAmeer96/Sprints-State-Management-Task-2.git
   cd Sprints-State-Management-Task-2
   ```

2. **Install Dependencies**:

   ```bash
   flutter pub get
   ```

3. **Run the App**:

   ```bash
   flutter run
   ```

---

## Dependencies

- [flutter_bloc](https://pub.dev/packages/flutter_bloc): State management library that helps implement the BLoC design pattern.
