//
//  SpendthriftApp.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/16/21.
//

import SwiftUI
import IQKeyboardManager
import Resolver

@available(iOS 14.0, *)
@main
struct SpendthriftApp: App {
        
    init() {
        IQKeyboardManager.shared().shouldResignOnTouchOutside = true
    }
    
    
    var body: some Scene {
        WindowGroup {
            ExpensesView()
        }
    }
}

extension Resolver: ResolverRegistering {
  public static func registerAllServices() {
    register { ExpensesRepo() as ExpensesRepo }.scope(.application)
  }
}
