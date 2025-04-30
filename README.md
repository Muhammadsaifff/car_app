# 🚗 Car App with Hero Animation

This Flutter application displays a list of popular cars with images and detailed descriptions. It features smooth navigation between the list and detail views using Flutter's `Hero` animation for visually appealing transitions.

## ✨ Features

- Displays a list of high-performance and luxury cars.
- Each car has a name, image, and detailed description.
- Tap on a car to navigate to a detailed view with a shared Hero animation.
- Uses `timeDilation` to slow down animations for better visual understanding (useful for learning Hero transitions).
- Clean and simple UI using Flutter widgets.

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.x or later)
- Dart SDK
- Android Studio or VSCode with Flutter plugin

### Installation

1. **Clone the repository:**
   
   git clone https://github.com/your-username/car-hero-app.git
   cd car-hero-app

2. **Install dependencies:**

   flutter pub get

3. **Run the app:**

   flutter run

## 📁 Assets
This app uses local images for car thumbnails and hero transitions. Ensure you have the following images placed inside the assets/images/ directory:

  supra.png
  mustang.png
  gtr.png
  huracan.png
  m4.png
  corvette.png

Also, declare them in your pubspec.yaml:

flutter:
  assets:
    - assets/images/supra.png
    - assets/images/mustang.png
    - assets/images/gtr.png
    - assets/images/huracan.png
    - assets/images/m4.png
    - assets/images/corvette.png

## 🧪 Usage
Launch the app.

Browse the list of cars.

Tap on any car to navigate to its detail screen.

Observe the Hero animation in action as the image transitions between screens.

You can modify the timeDilation value in main() to adjust animation speed:

  timeDilation = 5.0; // Slower animation for better visualization

## 🛠️ Built With
Flutter - UI toolkit for building natively compiled apps

Dart - Programming language used with Flutter

Material Design Components

Hero Widget for animations

## 📚 Learning Goals
Understand and implement Hero animations.

Practice Flutter basics like navigation, stateless widgets, and asset management.

Develop responsive UIs with ListView and widget composition.

##📜 License
This project is licensed under the MIT License.

## 👨‍💻 Author
Muhammad Saif Shakil
GitHub: @Muhammadsaifff

Feel free to open issues or submit pull requests to enhance this app!
