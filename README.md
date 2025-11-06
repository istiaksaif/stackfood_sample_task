# StackFood Sample Task

A Flutter application built as part of a technical assessment.  
The app fetches data from the 6amTech StackFood public API and displays banners, categories, popular items, campaigns, and restaurants with pagination and state management.

---

## 🚀 Features

- Pixel‑perfect UI based on provided design (mobile + web adaptive)
- API integration using GetX & Repository pattern
- State management using GetX
- Pagination for Restaurants
- Skeleton loading shimmer
- Error handling for all API calls
- Responsive layout using ScreenUtil
- Centralized configuration loading (currency, default address, etc.)
- Modular widget structure for clean code

---

## 📦 API Endpoints Used

| Feature | Endpoint |
|--------|----------|
| Config | `/api/v1/config` |
| Banner | `/api/v1/banners` |
| Categories | `/api/v1/categories` |
| Popular Food | `/api/v1/products/popular` |
| Campaign Items | `/api/v1/campaigns/item` |
| Restaurants (Paginated) | `/api/v1/restaurants/get-restaurants/all?offset=1&limit=10` |

Base URL:  
`https://stackfood-admin.6amtech.com`

Required Headers:
```json
{
  "Content-Type": "application/json; charset=UTF-8",
  "zoneId": "[1]",
  "latitude": "23.735129",
  "longitude": "90.425614"
}
```

---

## 📂 Project Structure

```
lib/
 ├── core/
 ├── features/
 │    ├── home/
 │    ├── shared/
 │    └── widgets/
 ├── main.dart
```

---

## 🛠 Installation & Run

```sh
git clone https://github.com/istiaksaif/stackfood_sample_task.git
cd stackfood_sample_task
flutter pub get
flutter run
```

### ✅ For Release Build (Android)

```sh
flutter build apk --release
```

---

## 🎥 Demo Video (MP4)

The demo video is included inside the repository:

📁 **assets/video/demo.mp4**

GitHub cannot autoplay MP4 inside README.  
But you can click the link below to open the video:

👉 **[Watch Demo Video](assets/video/demo.mp4)**

---

## 📸 Screenshots

Below are the UI previews from the completed project.

<p float="left">
  <img src="https://github.com/istiaksaif/stackfood_sample_task/blob/main/assets/screenshots/ss1.png" width="260"/>
  <img src="https://github.com/istiaksaif/stackfood_sample_task/blob/main/assets/screenshots/ss2.png" width="260"/>
  <img src="https://github.com/istiaksaif/stackfood_sample_task/blob/main/assets/screenshots/ss3.png" width="260"/>
</p>

<p float="left">
  <img src="https://github.com/istiaksaif/stackfood_sample_task/blob/main/assets/screenshots/ss4.png" width="260"/>
  <img src="https://github.com/istiaksaif/stackfood_sample_task/blob/main/assets/screenshots/ss5.png" width="260"/>
  <img src="https://github.com/istiaksaif/stackfood_sample_task/blob/main/assets/screenshots/ss6.png" width="260"/>
</p>

---

## ✅ Tech Stack

- Flutter 3.x
- GetX (State Management)
- Dart Isolates (compute)
- Carousel Slider
- Smooth Page Indicator
- Skeletonizer Shimmer
- ScreenUtil for Responsive UI

---

## 📌 Notes

- All API calls are properly handled with retry manager
- Uses extension methods for currency formatting
- Fully modularized widget structure
- Location name resolved from config default location (mobile-supported)

---

## 🧑‍💻 Author

**Istiak Ahamed Saif**  
Software Engineer  
GitHub: https://github.com/istiaksaif

---

## ✅ License

This project is created only for the assessment purpose and not intended for commercial use.
