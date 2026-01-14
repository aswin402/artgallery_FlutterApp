# Art Gallery
A modern Flutter-based Art Gallery application focused on clean UI, reusable components, and a scalable layout system.  
This project follows **web-inspired architecture** while staying idiomatic to Flutter.

---

## folder structure 
```css
lib/
├── main.dart
│
├── app/
│   ├── app.dart           # MaterialApp, theme, routes
│   └── app_routes.dart
│
├── core/
│   ├── api/
│   │   ├── api_client.dart
│   │   └── endpoints.dart
│   │
│   └── theme/
│       ├── app_colors.dart
│       ├── app_spacing.dart
│       └── app_theme.dart
│
├── data/
│   ├── models/
│   │   └── art_model.dart
│   └── services/
│       └── art_service.dart
│
├── pages/
│   ├── home/
│   │   └── home_page.dart
│   │
│   ├── art/
│   │   ├── art_page.dart
│   │   └── widgets/
│   │       └── art_card.dart
│   │
│   ├── inventory/
│   │   └── inventory_page.dart
│   │
│   ├── about/
│   │   └── about_page.dart
│   │
│   └── contact/
│       └── contact_page.dart
│
├── shared/
│   └── widgets/
│       ├── app_button.dart
│       ├── app_card.dart
│       └── app_loader.dart
│
└── assets/

```
## workflow

* crated  first setup the folder structure then we need to make theme for our app
* i have used gpt for this direct my website theme codes into dart codes for tailwinds+shadcin ui for flutter kinda new experiment for me


### 1️⃣ Global Application Layout

We implemented a **global layout system** to avoid repeating UI elements across pages.

**Includes:**
- 🔝 Fixed Top Navigation Bar
- 📜 Scrollable Page Content
- 🔻 Global Footer

This ensures consistent structure across all screens.

lib/app/app_shell.dart it is the global app layout

- and we have build widgets topNavbar and footer. So we used both in applayout like next.js layout