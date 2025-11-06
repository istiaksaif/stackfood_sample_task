# StackFood Sample Task – Flutter App

A Flutter application built for the **6amTech StackFood Sample Task**, implementing a pixel‑perfect home screen, data fetching from public APIs, state management (GetX), pagination, skeleton loading, and web/mobile responsive UI.

---

## 🚀 Features

- Fetch & display:
  - Config (default location, currency)
  - Banners
  - Categories
  - Popular Foods
  - Food Campaigns
  - Restaurants (with pagination)
- Pixel-perfect UI from provided design
- Shimmer/Skeleton loading using Skeletonizer
- On-scroll pagination for restaurants
- Custom widgets & clean architecture
- GetX State Management
- Error handling & retry manager
- Web responsive layout using `ScreenUtil` + custom responsive handler
- Custom AppBar with location detection (reverse geocoding)
- Currency formatting using extension
- Lazy loading lists

---

## 📱 Screenshots

<p align="center">
  <img src="https://github.com/istiaksaif/stackfood_sample_task/blob/main/assets/screenshots/ss1.jpg?raw=true" width="260" />
  <img src="https://github.com/istiaksaif/stackfood_sample_task/blob/main/assets/screenshots/ss2.jpg?raw=true" width="260" />
  <img src="https://github.com/istiaksaif/stackfood_sample_task/blob/main/assets/screenshots/ss3.jpg?raw=true" width="260" />
</p>

<p align="center">
  <img src="https://github.com/istiaksaif/stackfood_sample_task/blob/main/assets/screenshots/ss4.jpg?raw=true" width="260" />
  <img src="https://github.com/istiaksaif/stackfood_sample_task/blob/main/assets/screenshots/ss5.jpg?raw=true" width="260" />
  <img src="https://github.com/istiaksaif/stackfood_sample_task/blob/main/assets/screenshots/ss6.jpg?raw=true" width="260" />
</p>

---

## 🎥 Demo Preview (GIF)

Click to watch full video:

[![Demo GIF](https://raw.githubusercontent.com/istiaksaif/stackfood_sample_task/main/assets/video/demo.gif)](https://raw.githubusercontent.com/istiaksaif/stackfood_sample_task/main/assets/video/demo.mp4?raw=true)


---

## 🛠️ How to Run the Project

### ✅ Clone the repository
```sh
git clone https://github.com/istiaksaif/stackfood_sample_task
cd stackfood_sample_task
```

### ✅ Install dependencies
```sh
flutter pub get
```

### ✅ Run the app (debug)
```sh
flutter run
```

### ✅ Build release apk
```sh
flutter build apk --release
```

If signing is required, create a `file.jks` and update:

`android/app/build.gradle`  
`android/key.properties`

---

## 📡 API Endpoints Used

Base URL: `https://stackfood-admin.6amtech.com`

| Feature | Endpoint |
|--------|----------|
| Config | `/api/v1/config` |
| Banners | `/api/v1/banners` |
| Categories | `/api/v1/categories` |
| Popular Foods | `/api/v1/products/popular` |
| Campaign Items | `/api/v1/campaigns/item` |
| Restaurants | `/api/v1/restaurants/get-restaurants/all?offset=1&limit=10` |

Headers:
```json
{
  "Content-Type": "application/json; charset=UTF-8",
  "zoneId": "[1]",
  "latitude": "23.735129",
  "longitude": "90.425614"
}
```

---

## 📦 Project Structure

```
lib/
 ├── core/
 │    ├── utils/
 │    ├── widgets/
 │    ├── network/
 │    └── routes/
 ├── features/
 │    ├── home/
 │    ├── shared/
 │    └── ...
 ├── main.dart
```

---

## ✅ State Management

Using **GetX**:
- Reactive `Rx` variables
- Controllers for each feature
- Global retry manager for failed network calls
- ScrollController for lazy pagination

---

## 🧩 Packages Used

- get
- http
- flutter_screenutil
- skeletonizer
- smooth_page_indicator
- flutter_rating_bar
- carousel_slider
- geocoding
- intl

---

## ✨ Notes

- The project follows clean UI structure using separate widget modules.
- All shimmer loaders follow consistent design.
- Restaurants list supports infinite scrolling.
- Currency formatting is globally controlled using extension methods.

---

## 📄 License

Open-source for evaluation purposes.  
Developed by **Istiak Ahamed Saif**.

