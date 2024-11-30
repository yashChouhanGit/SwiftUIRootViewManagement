//
//  HomeView.swift
//  SwiftUIAppEntryApp
//
//  Created by Yash Chouhan on 01/12/24.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var appStateViewModel: AppEntryViewModel

    var body: some View {
        VStack {
            Text("HomeView")
            
            updateStateView(state: $appStateViewModel.appState)
        }
    }
}

#Preview {
    HomeView()
}


extension View {
    
    func updateStateView(state: Binding<AppState>) -> some View {
        Menu {
            Picker(selection: state) {
                ForEach(AppState.allCases, id: \.rawValue) {
                    Text($0.rawValue)
                        .tag($0)
                }
            } label: {
                EmptyView()
            }
        } label: {
            Text(state.wrappedValue.rawValue)
                .onChange(of: state.wrappedValue) { newValue in
                    AppEntryViewModel.shared.updateState(with: newValue)
                }
        }
    }
}
