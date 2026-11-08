//
//  NeuShadowModifier.swift
//  DailyDoseApp
//
//  Created by Thrace on 12/14/22.
//

import SwiftUI

struct NeuShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color("neuColor1"), radius: 1, x: -7, y: -7)
            .shadow(color: Color("neuColor2"), radius: 4, x: -13, y: -7)
            .shadow(color: Color("neuColor3"), radius: 10, x: -8, y: 5)
            .shadow(color: Color("neuColor4"), radius: 10, x: 10, y: 9)
    }
}

extension View {
    func neuShadow() -> some View {
        modifier(NeuShadowModifier())
    }
}

