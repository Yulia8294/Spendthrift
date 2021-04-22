//
//  CircleProgressBar.swift
//  BizzAR-Swift
//
//  Created by Yulia Novikova on 12/9/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import SwiftUI

struct CircleProgressBar: View {
    
    @Binding var progress: Float
    @Binding var isShowing: Bool
    
    @State var circleColor: Color = .blue
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.3)
                .foregroundColor(circleColor)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(circleColor)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
            Text(String(format: "%.0f %%", min(self.progress, 1.0)*100.0))
                .font(.largeTitle)
                .bold()
            
        }.opacity(isShowing ? 1 : 0)
    }
}

struct CircleProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        CircleProgressBar(progress: Binding.constant(0.3), isShowing: Binding.constant(true))
    }
}

