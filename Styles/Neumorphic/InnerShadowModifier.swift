//
//  InnerShadowModifier.swift
//  MobileTutorial
//
//  Created by Thrace on 10/14/22.
//

import SwiftUI

struct InnerShadowModifier: ViewModifier {
    
    @State var radius: CGFloat = 10
    
//    var bgColor: Color
//    var darkShadow: Color
//    var lightShadow: Color
    
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: radius)
                    .stroke(Color("Background"), lineWidth: 4)
                    .shadow(color: Color("darkShadow"), radius: 4, x: 5, y: 5)
                    .clipShape(RoundedRectangle(cornerRadius: radius))
                    .shadow(color: Color("lightShadow"), radius: 4, x: -5, y: -5)
                    .clipShape(RoundedRectangle(cornerRadius: radius))
            )
        
    }
}
