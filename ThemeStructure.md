# 🎨 Art Gallery – Flutter App

A modern Art Gallery application built with Flutter, inspired by Tailwind CSS + shadcn/ui design principles, featuring a token-based theming system, light & dark modes, and reusable UI components.

## ✨ Features

### 🌗 Light & Dark Theme System
- System-based theme detection (`ThemeMode.system`)
- Manual theme toggle (Light ↔ Dark)
- Centralized theme controller using `ValueNotifier`
- Smooth icon animation when switching themes

### 🎨 Design Token System (shadcn-style)
- Semantic color tokens (primary, secondary, muted, accent, etc.)
- Consistent radius scale (sm → xxxl)
- No hardcoded colors inside widgets
- Inspired by shadcn + Tailwind CSS variables

### 🧱 Reusable UI Components
- Primary Button
- Secondary Button
- Top Navigation Bar
- Context-aware styling via `ThemeExtension`

### 🧠 Clean Architecture
- Feature-based folder structure
- Clear separation between:
  - Theme
  - Widgets
  - Pages
  - App shell

## 📁 Project Structure

```
lib/
├── app/
│   └── app_shell.dart
│
├── core/
│   ├── theme/
│   │   ├── app_colors.dart
│   │   ├── app_radius.dart
│   │   ├── app_text.dart
│   │   ├── app_theme.dart
│   │   ├── theme_controller.dart
│   │   └── theme_x.dart
│   │
│   └── widgets/
│       ├── app_button.dart
│       └── app_top_navbar.dart
│
├── pages/
│   └── home/
│       └── home_page.dart
│
└── main.dart
```

## 🎨 Theme System Overview

### Color Tokens (AppColors)
Inspired by shadcn/ui CSS variables:

**Light Theme**
- `background`
- `foreground`
- `card`
- `primary`
- `secondary`
- `muted`
- `accent`
- `border`
- `lightNavbar`

**Dark Theme**
- `darkBackground`
- `darkForeground`
- `darkCard`
- `darkNavbar`
- `darkBorder`

### Radius Scale (AppRadius)
Consistent spacing & rounding across the app:
- `sm` → 8
- `md` → 10
- `lg` → 12
- `xl` → 16
- `xxl` → 20
- `xxxl` → 24

## 🌗 Theme Switching

### Theme Controller
```dart
ThemeController.toggleTheme();
```

- Uses `ValueNotifier<ThemeMode>`
- Listens globally via `ValueListenableBuilder`
- No third-party state management needed

### Theme Extensions (IMPORTANT)
`theme_x.dart` adds semantic access to colors:

```dart
context.colors.primary
context.colors.secondary
context.colors.background
```

✔ Works exactly like Tailwind + shadcn tokens  
✔ Automatically switches for dark mode  
✔ No `if (isDark)` checks needed

## 🔘 Button System (shadcn-style)

### Primary Button
```dart
PrimaryButton(
  text: 'Explore',
  onPressed: () {},
)
```

### Secondary Button
```dart
SecondaryButton(
  text: 'Get Started',
  onPressed: () {},
)
```

### Why this approach?
- Semantic components instead of raw buttons
- Centralized styling
- Easy global updates
- Light/Dark auto-support

## 🧭 Top Navigation Bar

### Features
- Logo + App Title
- Secondary CTA Button
- Animated Theme Toggle
- Menu Icon
- Rounded container
- Theme-aware background

### Theme Behavior
| Mode | Navbar Color |
|------|--------------|
| Light | `lightNavbar` |
| Dark | `darkNavbar` |

## 🧠 Design Philosophy

Inspired by:
- Tailwind CSS
- shadcn/ui
- Modern design systems

Principles:
- ✨ Semantic tokens over raw colors
- 🌓 One codebase, multiple themes
- 🧱 Reusable components
- 🧠 Predictable UI behavior
- 🔥 Developer-friendly APIs

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (latest stable version)
- Dart (latest stable version)

### Installation
1. Clone the repository
2. Run `flutter pub get`
3. Run `flutter run`

### Usage
- Toggle theme using the sun/moon icon in the top navigation bar
- Components automatically adapt to light/dark mode
- Use semantic color tokens via `context.colors`

## 📱 Screenshots
*(Add screenshots of the app in light and dark mode here)*

## 🔧 Technical Details

### Theme Architecture
The app uses Flutter's built-in `ThemeExtension` system combined with a custom `ThemeController` to provide a seamless theming experience. All colors are defined as semantic tokens that automatically switch between light and dark variants.

### State Management
Uses Flutter's native `ValueNotifier` and `ValueListenableBuilder` for theme state management, keeping dependencies minimal.

### Component Design
All UI components are built with composition in mind, following the shadcn/ui philosophy of creating reusable, customizable building blocks.

## 📄 License
*(Add your license here)*

## 🤝 Contributing
Contributions, issues, and feature requests are welcome!

## 📬 Contact
*(Add your contact information here)*

---
*Built with ❤️ using Flutter and shadcn/ui principles*