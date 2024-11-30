//
//  AppEntryView.swift
//  SwiftUIAppEntryApp
//
//  Created by Yash Chouhan on 01/12/24.
//

import SwiftUI

struct AppEntryView: View {
    @StateObject var appStateViewModel = AppEntryViewModel.shared
    
    init() {}
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            if appStateViewModel.appState == .splash {
                SplashView().edgesIgnoringSafeArea(.all)
            } else if appStateViewModel.appState == .home {
                HomeView()
            } else if appStateViewModel.appState == .login {
                LoginView()
            } else if appStateViewModel.appState == .registration {
                RegistrationView()
            } else if appStateViewModel.appState == .passcode {
                PassCodeVIew()
            } else {
                SplashView().edgesIgnoringSafeArea(.all)
            }
        }.environmentObject(appStateViewModel)
    }
}
