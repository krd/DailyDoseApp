//
//  extrudedShadowModifier.swift
//  DailyDoseApp
//
//  Created by Thrace on 12/14/22.
//

import SwiftUI

struct ExtrudedShadowView: View {
    var body: some View {
        ZStack {
            Farbe.BaseColor
                .edgesIgnoringSafeArea(.all)
            Circle()
                .frame(width: 150, height: 150)
                .modifier(ExtrudedShadowModifier(shape: Circle()))
        }
    }
}

struct ExtrudedShadowModifier <S: Shape>: ViewModifier {
    var shape: S
    
    func body(content: Content) -> some View {
//        shape.innerShadowSoft(shape, radius: 6)
        content
            .foregroundStyle(Farbe.ForegroundColor)
//            .foregroundColor(.LightShadow)
            .frame(width: 150, height: 150)
            .innerShadowSoft(shape, radius: 6)
    }
}

class Farbe {
    static let BaseColor: Color = Color(red: 0.9369999766349792, green: 0.9409999847412109, blue: 0.9570000767707825)
    static let LightShadowColor: Color = Color(red: 0.8585686087608337, green: 0.8625686168670654, blue: 0.878568708896637)
    static let DarkShadowColor: Color = Color(red: 1.0154314041137695, green: 1.019431471824646, blue: 1.0354315042495728)
    static let ForegroundColor: LinearGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 0.976215662909489, green: 0.9802156710157207, blue: 0.9962157630452922), Color(red: 0.8977842903604695, green: 0.9017842984667012, blue: 0.9177843904962727)]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

extension View {
    func extrudedShadow<S: Shape>(_ content: S) -> some View {
        self.modifier(ExtrudedShadowModifier(shape: content))
    }
}

struct ExtrudedShadowView_Previews: PreviewProvider {
    static var previews: some View {
        ExtrudedShadowView().preferredColorScheme(.dark)
        ExtrudedShadowView().preferredColorScheme(.light)
    }
}
