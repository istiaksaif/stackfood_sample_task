# 📱 StackFood Sample Task – Flutter Application

This project is developed as part of the **6amTech Recruitment Assessment**.  
It is a pixel-perfect Flutter application that fetches real-time data from a public API and displays banners, categories, popular food, campaigns, and paginated restaurant lists.

The application is fully responsive and supports both **Android** and **Web**.

## ✅ Features

- Fetch real-time data from StackFood APIs
- Fully responsive UI (Mobile + Web)
- Pixel-perfect design implementation
- GetX state management for controllers, dependency injection, routing
- API retry mechanism
- Shimmer loading using Skeletonizer
- Pagination for restaurants
- Centralized currency formatting using extensions
- Modular widget structure
- Error handling with fallback values
- Address fetching using geocoding (mobile) and fallback for web

## ✅ API Endpoints Used

Base URL:
https://stackfood-admin.6amtech.com

### Endpoints:
- **Config** → `/api/v1/config`
- **Banners** → `/api/v1/banners`
- **Categories** → `/api/v1/categories`
- **Popular Foods** → `/api/v1/products/popular`
- **Food Campaigns** → `/api/v1/campaigns/item`
- **Restaurants** → `/api/v1/restaurants/get-restaurants/all?offset=1&limit=10`

### Required Headers:
```
{
  "Content-Type": "application/json; charset=UTF-8",
  "zoneId": "[1]",
  "latitude": "23.735129",
  "longitude": "90.425614"
}
```

## ✅ Installation & Setup

### 1. Clone the Repository
```
git clone https://github.com/istiaksaif/stackfood_sample_task
cd stackfood_sample_task
```

### 2. Install Dependencies
```
flutter pub get
```

### 3. Run the App
```
flutter run
```

### 4. Run on Web
```
flutter run -d chrome
```

### 5. Build Release APK
```
flutter build apk --release
```

## ✅ Screenshots

Place your screenshots inside:
```
assets/screenshots/
```

## ✅ Demo Video

Place your MP4 demo video here:
```
assets/video/demo.mp4
```

## ✅ Additional Notes

- Full shimmer skeleton loading states
- Modular UI widgets
- Pagination logic with lazy loading
- Currency formatting extension
- Web-safe fallback for location lookups

## ✅ Author

**Istiak Ahamed Saif**  
GitHub: https://github.com/istiaksaif
