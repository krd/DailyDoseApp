//
//  SoftOuterShadowModifier.swift
//  DailyDoseApp
//
//  Created by Thrace on 12/14/22.
//

import SwiftUI

private struct SoftOuterShadowViewModifier: ViewModifier {
    var lightShadow : Color = Color("LightShadow")
    var darkShadow : Color = Color("DarkShadow")
    var offset: CGFloat
    var radius : CGFloat
    
    init(darkShadowColor: Color, lightShadowColor: Color, offset: CGFloat, radius: CGFloat) {
        self.darkShadow = darkShadowColor
        self.lightShadow = lightShadowColor
        self.offset = offset
        self.radius = radius
    }

    func body(content: Content) -> some View {
//        content
//        .shadow(color: darkShadowColor, radius: radius, x: offset, y: offset)
//        .shadow(color: lightShadowColor, radius: radius, x: -offset, y: -offset)
        content
            .shadow(color: lightShadow, radius: radius, x: offset, y: offset)
            .shadow(color: darkShadow, radius: radius, x: -offset, y: -offset)
    }

}

extension View {

    public func softOuterShadowz(darkShadow: Color = Color("DarkShadow"), lightShadow: Color = Color("LightShadow"), offset: CGFloat = 6, radius:CGFloat = 3) -> some View {
        modifier(SoftOuterShadowViewModifier(darkShadowColor: darkShadow, lightShadowColor: lightShadow, offset: offset, radius: radius))
    }
    
}

//content
//    .foregroundStyle(Color.primary_color)
//    .shadow(color: color.LightShadowColor, radius: 5.505974830665024, x: 4.053225061576354, y: 4.053225061576354)
//    .shadow(color: color.DarkShadowColor, radius: 2.505974830665024, x: -4.053225061576354, y: -4.053225061576354)
