//
//  LogoHeader.swift
//  BizzAR-Swift
//
//  Created by Yulia Novikova on 11/9/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import SwiftUI

struct LogoHeader: View {
    
    var body: some View {
        HStack {
            Spacer()
            Image("logo_bizzar_middle")
                .padding([.top, .bottom], 20)
            Spacer()
        }
    }
}
