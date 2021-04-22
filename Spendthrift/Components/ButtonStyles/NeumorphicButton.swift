//
//  AboutCardView.swift
//  BizzAR-Swift
//
//  Created by Yulia Novikova on 11/2/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import SwiftUI

extension LinearGradient{
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom)
    }
}

struct NeumorphicButton: ButtonStyle {
    
    var cornerRadius: CGFloat = 15
    var height: CGFloat = 60
    var width: CGFloat = .infinity
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(Font.system(size: 20, weight: .semibold, design: .default))
            .foregroundColor(.secondary)
            .padding()
            .frame(minWidth: 0, maxWidth: width, minHeight: height, alignment: .center)
            .contentShape(RoundedRectangle(cornerRadius: cornerRadius))
            .background(
                Group {
                    GeometryReader { geometry in
                        if configuration.isPressed {
                            RoundedRectangle(cornerRadius: cornerRadius)
                                .fill(Color.offWhite)
                                .overlay(
                                    RoundedRectangle(cornerRadius: cornerRadius)
                                        .stroke(Color.gray, lineWidth: 3)
                                        .blur(radius: 4)
                                        .offset(x: 1, y: 1)
                                        .mask(RoundedRectangle(cornerRadius: cornerRadius)
                                                .fill(LinearGradient(Color.black, Color.clear)))
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: cornerRadius)
                                        .stroke(Color.white, lineWidth: 3)
                                        .blur(radius: 4)
                                        .offset(x: -4, y: -2)
                                        .mask((RoundedRectangle(cornerRadius: cornerRadius))
                                                .fill(LinearGradient(Color.clear, Color.black)))
                        )
                        } else {
                            RoundedRectangle(cornerRadius: cornerRadius)
                                .fill(Color.offWhite)
                                .shadow(color: Color.black.opacity(0.2), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: 10)
                                .shadow(color: Color.white.opacity(0.7), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -5, y: -5)
                        }
                    }
                })
    }
}


struct AboutCardView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.offWhite
            
            Button("Button title long title") {
                
            }.buttonStyle(NeumorphicButton(cornerRadius: 15))
            .frame(width: 300, height: 66, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}
