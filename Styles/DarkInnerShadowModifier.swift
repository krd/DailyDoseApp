//
//  DarkInnerShadowModifier.swift
//  DailyDoseApp
//
//  Created by Thrace on 12/14/22.
//

import SwiftUI

struct NeumorphismView: View {
    var body: some View {
        ZStack {
            Color("BaseColor")
                .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 150, height: 150)
                .modifier(NeumorphismModifier())
        }
    }
}

struct NeumorphismModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color("ForegroundColor"))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(dkColor.BaseColor, lineWidth: 4)
                    .shadow(color: dkColor.LightShadowColor, radius: 2.3813115763546797, x: 3.3035906711822656, y: 3.3035906711822656)
                    .shadow(color: dkColor.DarkShadowColor, radius: 2.3813115763546797, x: -3.3035906711822656, y: -3.3035906711822656)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
            )
    }
}

struct NeumorphismView_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphismView().preferredColorScheme(.dark)
        NeumorphismView().preferredColorScheme(.light)
    }
}

class dkColor {
    static let BaseColor: Color = Color(red: 0.12984204292297363, green: 0.12984612584114075, blue: 0.12984395027160645)
    static let LightShadowColor: Color = Color(red: 0.05141066759824753, green: 0.05141475051641464, blue: 0.05141257494688034)
    static let DarkShadowColor: Color = Color(red: 0.20827338099479675, green: 0.20827746391296387, blue: 0.20827531814575195)
    static let ForegroundColor: LinearGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 0.12984204292297363, green: 0.12984612584114075, blue: 0.12984395027160645), Color(red: 0.12984204292297363, green: 0.12984612584114075, blue: 0.12984395027160645)]), startPoint: .topLeading, endPoint: .bottomTrailing)
}
