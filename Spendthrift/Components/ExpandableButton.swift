//
//  ExpandableButton.swift
//  BizzAR-Swift
//
//  Created by Yulia Novikova on 11/3/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import SwiftUI

struct ExpandableButton<Content: View>: View {
    
    let toolButtons: Content
    
    @State var isExpanded = false
    
    init(@ViewBuilder toolButtons: () -> Content) {
        self.toolButtons = toolButtons()
    }
    
    var body: some View {
        
        VStack {
            VStack {
                if isExpanded {
                    toolButtons
                }
            }
            .scaleEffect(isExpanded ? 1 : 0.01)
            .animation(.spring(response: 0.6, dampingFraction: 0.5, blendDuration: 0.5))
            
            Button(action: {
                isExpanded.toggle()
            }) {
                Image("tools")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding(10)
                
            }
            .background(Color.bizzarBlue)
            .clipShape(Circle())
            
        }.animation(.easeInOut)
       
    }
}

struct ExpandableButton_Previews: PreviewProvider {
    static var previews: some View {
        ExpandableButton() {
            
        }
    }
}
