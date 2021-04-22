//
//  SpendthriftApp.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/16/21.
//

import SwiftUI
import IQKeyboardManager

@main
struct SpendthriftApp: App {
    
    init() {
        IQKeyboardManager.shared().shouldResignOnTouchOutside = true
    }
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
