# Monkey Ticket Flutter

An open-source Flutter web animation where a monkey prints a ticket with a curved and animated receipt. Inspired by POS systems and cute UX patterns, this project was created to experiment with animation, modular Flutter structure, and fun UI. Deployed on [Cloudflare Pages](https://monkey-ticket-flutter.pages.dev/).

<img src="screenshots/1.gif" />
<img src="screenshots/1.png" />

---

## 🐒 What does this project do?

This Flutter app animates a thermal receipt emerging from a custom monkey-themed printer. It features:

- SVG rendering with `flutter_svg`
- Smooth animated ticket with bounce and curve effects
- Rounded zigzag clipper for realistic edges
- Modular widget organization
- Built for web and deployed via Cloudflare Pages

---

## ✅ Requirements

1. Flutter 3.7 or higher
2. Dart SDK
3. A modern web browser
4. Internet connection to view the deployed app

---

## 🧱 How to set up and run this project locally

### 1. Clone the repository

```bash
git clone https://github.com/your-username/monkey-ticket-flutter.git
cd monkey-ticket-flutter
```

### 2. Get dependencies

```bash
flutter pub get
```

### 3. Run it locally

```bash
flutter run -d chrome
```

Or to build it for web:

```bash
flutter build web
```

---

## 🌍 Live Demo

👉 [https://monkey-ticket-flutter.pages.dev](https://monkey-ticket-flutter.pages.dev)

---

## 📁 Project Structure

```
lib/
├── animations/            # Animation controller logic
│   └── ticket_animation_controller.dart
├── clippers/              # Custom clipper for ticket edge
│   └── ticket_clipper.dart
├── constants/             # App colors
│   └── colors.dart
├── screens/
│   └── home_screen.dart   # Main UI
├── widgets/               # Modular UI components
│   ├── monkey_printer.dart
│   ├── print_button.dart
│   └── ticket.dart
main.dart
```

---

## 📌 License

MIT © [Hensell Espinoza](https://hensell.dev)
