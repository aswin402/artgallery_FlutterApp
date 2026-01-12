# artgallery


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
