//
//  TextModifiers.swift
//  BizzAR-Swift
//
//  Created by Yulia Novikova on 11/5/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import SwiftUI

struct TextModifiers: ViewModifier {
    
    var color: Color = .blue
    
    func body(content: Content) -> some View {
        return content
            .font(Font.system(size: 18, weight: .bold, design: .default))
            .padding(10)
            .foregroundColor(color)
    }
}

extension View {
    func titled(_ color: Color = .blue) -> some View {
        self.modifier(TextModifiers(color: color))
    }
}

extension Text {
    func titled(_ color: Color = .blue) -> some View {
        self.modifier(TextModifiers(color: color))
    }
}

extension Button {
    func titled(_ color: Color = .blue) -> some View {
        self.modifier(TextModifiers(color: color))
    }
}
