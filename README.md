# NavigationApp (iOS 17+ SwiftUI + MVVM Navigation Architecture) *

This project demonstrates a modular, scalable SwiftUI app architecture using:
- NavigationStack (iOS 17+)
- Tab-based navigation with isolated routers
- Onboarding and splash flow controlled by a centralized router

---

## Prerequisites
- iOS 17.0 or later
- Xcode 15 or later
- SwiftUI
- MVVM architecture

---

## Wireframe
https://github.com/SreekanthReddy-CT/SwiftUINavigationApp/blob/main/NavigationStackFlow.png

---

## Navigation Flow
```
NavigationApp
└── AppBase
    └── NavigationStack (path: $router.path)
        ├── SplashScreenView
        │   └── After delay, decides route: Onboarding or Dashboard
        ├── OnboardingView (own NavigationStack)
        │   ├── OnboardingStartView
        │   └── OnboardingCompletedView
        └── DashboardTabView (TabView with 3 NavigationStacks)
            ├── MusicMainView (NavigationStack with MusicRoute)
            │   ├── MusicMainView
            │   └── MusicDetailView
            ├── MovieMainView (NavigationStack with MovieRoute)
            │   ├── MovieMainView
            │   └── MovieDetailView
            └── MoreView (NavigationStack with MoreRoute)
                ├── MoreView
                └── SettingsView
```

---

