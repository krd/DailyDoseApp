//
//  OuterShadowModifier.swift
//  DailyDoseApp
//
//  Created by Thrace on 12/14/22.
//

import SwiftUI

struct OuterShadowModifierView: View {
    var body: some View {
        ZStack {
//            color.BaseColor
            Color.primary
            .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 150, height: 150)
                .modifier(OuterShadowModifier())
        }
    }
}

struct OuterShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.primary)
            .shadow(color: color.LightShadowColor, radius: 5.505974830665024, x: 4.053225061576354, y: 4.053225061576354)
            .shadow(color: color.DarkShadowColor, radius: 2.505974830665024, x: -4.053225061576354, y: -4.053225061576354)
    }
}

//struct OuterShadowModifier: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .foregroundStyle(Color("ForegroundColor"))
//            .shadow(color: Color("LightShadowColor"), radius: 5.505974830665024, x: 4.053225061576354, y: 4.053225061576354)
//            .shadow(color: Color("DarkShadowColor"), radius: 5.505974830665024, x: -4.053225061576354, y: -4.053225061576354)
//    }
//}

class color {
    static let BaseColor: Color = Color(red: 0.9372549057006836, green: 0.9411764740943909, blue: 0.9764706492424011)
    static let LightShadowColor: Color = Color(red: 0.8588235378265381, green: 0.8627451062202454, blue: 0.8980392813682556)
    static let DarkShadowColor: Color = Color(red: 1.015686273574829, green: 1.0196079015731812, blue: 1.0549020767211914)
    static let ForegroundColor: LinearGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 0.9372549057006836, green: 0.9411764740943909, blue: 0.9764706492424011), Color(red: 0.9372549057006836, green: 0.9411764740943909, blue: 0.9764706492424011)]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

extension View {
    func outerShadowShallow() -> some View {
        self.modifier(OuterShadowModifier())
    }
}

struct OuterShadowModifierView_Previews: PreviewProvider {
    static var previews: some View {
        OuterShadowModifierView().preferredColorScheme(.dark)
        OuterShadowModifierView().preferredColorScheme(.light)
    }
}
