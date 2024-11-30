//
//  RegistrationView.swift
//  SwiftUIAppEntryApp
//
//  Created by Yash Chouhan on 01/12/24.
//

import SwiftUI

struct RegistrationView: View {
    
    @EnvironmentObject var appStateViewModel: AppEntryViewModel
    
    var body: some View {
        VStack {
            Text("RegistrationView")

            updateStateView(state: $appStateViewModel.appState)
        }
    }
}

#Preview {
    RegistrationView()
}
