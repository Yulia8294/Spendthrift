//
//  Wave.swift
//  BizzAR-Swift
//
//  Created by Yulia Novikova on 11/2/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import SwiftUI

struct Wave: Shape {
    
    var yOffset: CGFloat = 0.9
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let control1 = CGPoint(x: rect.maxX * 0.75, y: rect.maxY - (rect.midY * yOffset))
        let control2 = CGPoint(x: rect.maxX * 0.25, y: rect.maxY + (rect.midY * yOffset))
        
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: .zero))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addCurve(to: CGPoint(x: .zero, y: rect.maxY), control1: control1, control2: control2)
        path.closeSubpath()
        return path
    }
}

struct Wave_Previews: PreviewProvider {
    
    static var previews: some View {
        Wave()
            .stroke(Color.blue, lineWidth: 10)
            .frame(height: 200)
    }
}




