//
//  LoginView.swift
//  SwiftUIAppEntryApp
//
//  Created by Yash Chouhan on 01/12/24.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var appStateViewModel: AppEntryViewModel
    
    var body: some View {
        VStack {
            Text("Login View")
            
            updateStateView(state: $appStateViewModel.appState)
        }
    }
}

#Preview {
    LoginView()
}
