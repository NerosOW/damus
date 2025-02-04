//
//  PinkGradient.swift
//  damus
//
//  Created by eric on 5/20/23.
//

import SwiftUI

fileprivate let damus_grad_c1 = hex_col(r: 0xd3, g: 0x4c, b: 0xd9)
fileprivate let damus_grad_c2 = hex_col(r: 0xf8, g: 0x69, b: 0xb6)
fileprivate let pink_grad = [damus_grad_c1, damus_grad_c2]

struct PinkGradient: View {
    var body: some View {
        PinkGradient.gradient
            .edgesIgnoringSafeArea([.top,.bottom])
    }
    
    static var gradient: LinearGradient {
         LinearGradient(colors: pink_grad, startPoint: .topTrailing, endPoint: .bottom)
    }
}

struct PinkGradient_Previews: PreviewProvider {
    static var previews: some View {
        PinkGradient()
    }
}

