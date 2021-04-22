//
//  ContentCardButton.swift
//  BizzAR-Swift
//
//  Created by Yulia Novikova on 11/4/20.
//  Copyright © 2020 Yulia. All rights reserved.
//


import SwiftUI


struct ContentCardButton: ButtonStyle {
    
    var icon: UIImage? = nil
    var title = ""
    
    func makeBody(configuration: Configuration) -> some View {
        return ZStack {
            
            RoundedRectangle(cornerRadius: 15)
                .frame(height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .shadow(color: Color.init(white: 0.5, opacity: 0.5), radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
            
            HStack(spacing: 15) {
                if let icon = self.icon {
                    Image(uiImage: icon)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                }
                
                Text(self.title)
                    .foregroundColor(Color.gray)
                    .font(.headline)
                
                Spacer()
                
            }.padding()
        }
        .scaleEffect(configuration.isPressed ? 0.96 : 1)
        .padding(5)
        .animation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0.5))
    }
}


struct ContentCardButton_Previews: PreviewProvider {
    
    static var previews: some View {
        ZStack {
            Color.offWhite
            
            Button("") {
                
            }.buttonStyle(ContentCardButton(icon: #imageLiteral(resourceName: "smile"), title: "Hehehehe"))
            .frame(width: 400, height: 66, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

