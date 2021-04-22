//
//  WeavyHeader.swift
//  BizzAR-Swift
//
//  Created by Yulia Novikova on 11/3/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import SwiftUI

struct WeavyHeader: View {
    
    var image: Image = Image("bizzar_bg")
    
    var body: some View {
        
        ZStack(alignment: .trailing) {
            
//            Wave(yOffset: 0.3)
//                .frame(height: 180)
//                .foregroundColor(Color.offWhite.opacity(0.6))
            
            Wave(yOffset: -0.6)
                .frame(height: 190)
                .foregroundColor(Color.offWhite.opacity(0.3))

            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 180)
                .clipShape(Wave(yOffset: 0.9))
                .shadow(color: Color.black.opacity(0.1), radius: 3, x: -3, y: 3)
                .edgesIgnoringSafeArea(.top)
            
            Image("atomichronica")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.trailing, 30)
            
        }
    }
}

struct WeavyHeader_Previews: PreviewProvider {
    static var previews: some View {
        WeavyHeader()
    }
}
