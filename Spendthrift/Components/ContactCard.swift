//
//  ContactCard.swift
//  BizzAR-Swift
//
//  Created by Yulia Novikova on 11/3/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import SwiftUI

struct ContactCard: View {
    
    var title: String = ""
    var details: String = ""
    var icon: UIImage = #imageLiteral(resourceName: "ARji_7")
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            RoundedRectangle(cornerRadius: 15)
                .frame(height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .shadow(color: Color.init(white: 0.5, opacity: 0.5), radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
            
            VStack(alignment: .leading, spacing: 5) {
                VStack(alignment: .leading, spacing: 0) {
                    Image(uiImage: icon)
                    .resizable(resizingMode: .stretch)
                    .frame(width: 50, height: 50)

                    Text(title)
                        .font(.title)
                        .foregroundColor(.primaryText)
                }
                
                Text(details)
                    .font(.body)
                    .foregroundColor(.secondary)
                
            }.padding()
        }
    }
}

struct ContactCard_Previews: PreviewProvider {
    
    static var previews: some View {
        ContactCard(title: "Phone", details: "+1 (973) 475-8333", icon: #imageLiteral(resourceName: "phone_icon"))
    }
}
