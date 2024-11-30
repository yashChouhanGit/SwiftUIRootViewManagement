//
//  SplashView.swift
//  SwiftUIAppEntryApp
//
//  Created by Yash Chouhan on 01/12/24.
//

import SwiftUI

struct SplashView: View {
    
    @EnvironmentObject var appStateViewModel: AppEntryViewModel
    
    var body: some View {
        VStack {
            Text("SplashView")
            
            updateStateView(state: $appStateViewModel.appState)
        }
    }
}

#Preview {
    SplashView()
}
