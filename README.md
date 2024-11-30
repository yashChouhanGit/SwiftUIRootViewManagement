# SwiftUIRootViewManagement
SwiftUIAppEntryApp is a SwiftUI iOS template with dynamic root view management via a centralized AppEntryViewModel. Switch seamlessly between independent root views (Splash, Home, Login, etc.), each with its own navigation stack. This architecture simplifies navigation, ensures modularity, and is ideal for scalable, state-driven apps.


# SwiftUIAppEntryApp

[![Swift](https://img.shields.io/badge/Swift-5.9-orange.svg)](https://swift.org)
[![Xcode](https://img.shields.io/badge/Xcode-15.1-blue.svg)](https://developer.apple.com/xcode/)
[![iOS](https://img.shields.io/badge/iOS-18.1-lightgrey.svg)](https://developer.apple.com/ios/)

**SwiftUIAppEntryApp** is a SwiftUI-based iOS application designed to simplify navigation and state management. The app allows dynamic switching between root views using a centralized state management system (`AppEntryViewModel`), while giving developers full control over navigation within each root view.

---

## Features

- **Dynamic Root View Management**:
   - Switch between root views globally using the `AppEntryViewModel.appState` property.
   - Root views include:
     - `SplashView`
     - `HomeView`
     - `LoginView`
     - `RegistrationView`
     - `PassCodeView`

- **Independent Navigation**:
   - Each root view manages its own navigation stack, allowing developers to customize navigation logic specific to that view.
   - Root views are entirely decoupled, making the architecture modular and easy to maintain.

- **Centralized State Management**:
   - A single source of truth (`AppEntryViewModel`) controls the current root view, eliminating the need for scattered navigation logic.

- **Scalable and Extensible**:
   - Adding new root views and navigation flows is straightforward by extending the `AppState` enum and creating corresponding views.

---

## Project Structure

### 1. **Entry Point**
The app begins with `AppEntryView`, which observes the `AppEntryViewModel` singleton and dynamically renders the appropriate root view based on the current app state.

```swift
@main
struct SwiftUIAppEntryApp: App {
    var body: some Scene {
        WindowGroup {
            AppEntryView()
        }
    }
}

