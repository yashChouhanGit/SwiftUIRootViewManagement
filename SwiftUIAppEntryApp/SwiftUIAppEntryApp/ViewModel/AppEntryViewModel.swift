//
//  AppEntryViewModel.swift
//  SwiftUIAppEntryApp
//
//  Created by Yash Chouhan on 01/12/24.
//

import Foundation
import SwiftUI

class AppEntryViewModel: ObservableObject {
    static let shared = AppEntryViewModel()
    
    @Published var appState: AppState = .home
    
    func updateState(with state: AppState) {
        withAnimation(.smooth) {
            appState = state
        }
    }
    
}
