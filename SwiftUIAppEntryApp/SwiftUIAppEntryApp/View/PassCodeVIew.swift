//
//  PassCodeVIew.swift
//  SwiftUIAppEntryApp
//
//  Created by Yash Chouhan on 01/12/24.
//

import SwiftUI

struct PassCodeVIew: View {
    
    @EnvironmentObject var appStateViewModel: AppEntryViewModel
    
    var body: some View {
        VStack {
            Text("PassCodeVIew")
            
            updateStateView(state: $appStateViewModel.appState)
        }
    }
}

#Preview {
    PassCodeVIew()
}
