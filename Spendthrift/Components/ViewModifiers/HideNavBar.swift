//
//  HideNavBar.swift
//  BizzAR-Swift
//
//  Created by Yulia Novikova on 11/1/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import SwiftUI

struct HideNavbar: ViewModifier {
    
    func body(content: Content) -> some View {
        return content
            .navigationBarTitle("")
            .navigationBarHidden(true)
    }
}

extension View {
    
    func hideNavbar() -> some View {
        self.modifier(HideNavbar())
    }
}
