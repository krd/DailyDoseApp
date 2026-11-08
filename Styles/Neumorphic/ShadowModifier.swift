//
//  ShadowModifier.swift
//  MobileTutorial
//
//  Created by Thrace on 10/14/22.
//

import SwiftUI

struct ShadowModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
               .shadow(color: Color("lightShadow"), radius: 8, x: -8, y: -8)
               .shadow(color: Color("darkShadow"), radius: 8, x: 8, y: 8)
    }
}


