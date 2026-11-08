//
//  ColorExtensions.swift
//  DailyDoseApp
//
//  Created by Thrace on 1/10/23.
//

import SwiftUI

enum BaseColors {
    case defaultMain //#ECF0F3
    case defaultDark //
    
}

import SwiftUI

struct NeuView: View {
    var body: some View {
        ZStack {
            Farben.BaseColor
                .edgesIgnoringSafeArea(.all)
            Circle()
                .frame(width: 300, height: 300)
                .modifier(NeuModifier())
        }
    }
}

struct NeuModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(LinearGradient(colors: [Farben.LightShadowColor, Farben.DarkShadowColor], startPoint: .bottomTrailing, endPoint: .topLeading))
            .shadow(color: Farben.LightShadowColor, radius: 1, x: 3.7103264664804474, y: 3.7103264664804474)
            .shadow(color: Farben.DarkShadowColor, radius: 1, x: -2, y: -2)
//            .shadow(color: Farben.DarkShadowColor, radius: 3.594366489175978, x: -3.7103264664804474, y: -3.7103264664804474)
    }
}

class Farben {
    
//    76A9F8, r:118 b:169 g:248 (r: , b:  , g: )
    static let BaseColor: Color = Color(red: 0.7540688514709473, green: 0.7540867924690247, blue: 0.754077136516571)  // E7EAEF
    static let LightShadowColor: Color = Color(red: 0.6756374835968018, green: 0.6756554245948792, blue: 0.6756458282470703)  //
    static let DarkShadowColor: Color = Color(red: 0.8325002193450928, green: 0.8325181603431702, blue: 0.8325085043907166)
    static let ForegroundColor: LinearGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 0.793284537745457, green: 0.7933024787435344, blue: 0.7932928227910808), Color(red: 0.7148531651964375, green: 0.7148711061945149, blue: 0.7148614502420613)]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

struct NeuView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        NeuView().preferredColorScheme(.light)
        NeuView().preferredColorScheme(.dark)
    }
}
