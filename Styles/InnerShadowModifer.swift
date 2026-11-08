//
//  InnerShadowModifer.swift
//  DailyDoseApp
//
//  Created by Thrace on 12/14/22.
//

import SwiftUI

struct NeumorphismView: View {
    var body: some View {
        ZStack {
            Color.BaseColor
                .edgesIgnoringSafeArea(.all)
//            RoundedRectangle(cornerRadius: 10)
            Circle()
                .frame(width: 200, height: 200)
                .modifier(InnerShadowModifier(shape: Circle()))
            Text("WTF?")
        }
    }
}

struct InnerShadowModifier<S: Shape>: ViewModifier {
    var shape: S
    var radius: CGFloat = 10
    var spread: CGFloat = 0.5
    
    var lightX = 3.1003887007389164
    var lightY = 3.1003887007389164
    
//    var radius: CGFloat = 2.4400977524630543
    
    init(shape: S, radius: CGFloat = 10, spread: CGFloat = 0.5) {
        self.shape = shape
        self.radius = radius
        self.spread = spread
    }
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.ForegroundColor)
            .overlay(
                
                
//                self.shape
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.BaseColor, lineWidth: 4)
                    .shadow(color: Color.LightShadowColor, radius: radius, x: 3.1003887007389164, y: 3.1003887007389164)
                    .shadow(color: Color.DarkShadowColor, radius: radius, x: -3.1003887007389164, y: -3.1003887007389164)
                    .clipShape(
//                        self.shape
                        RoundedRectangle(cornerRadius: 10)
                    )
            )
    }
    
    fileprivate func strokeLineWidth(_ geo: GeometryProxy) -> CGFloat {
        return geo.size.width * 0.10
    }
    
    fileprivate func strokeLineScale(_ geo: GeometryProxy) -> CGFloat {
        let lineWidth = strokeLineWidth(geo)
        return geo.size.width / CGFloat(geo.size.width - lineWidth)
    }
    
    fileprivate func shadowOffset(_ geo: GeometryProxy) -> CGFloat {
        return (geo.size.width <= geo.size.height ? geo.size.width : geo.size.height) * 0.5 * min(max(spread, 0), 1)
    }
}

extension View {
//    func innerShadow<S : Shape>(_ content: S, darkshadow: Color = Color("DarkShadowColor"), lightShadow: Color = Color("LightShadowColor"), spread: CGFloat = 10, radius: CGFloat = 10) -> some View {
        func innerShadow<S : Shape>(_ content: S) -> some View {
        modifier(InnerShadowModifier(shape: content))
    }
}

struct NeumorphismView_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphismView().preferredColorScheme(.light)
        NeumorphismView().preferredColorScheme(.dark)
    }
}

// SECOND

//struct NeumorphismView: View {
//    var body: some View {
//        ZStack {
//            color.BaseColor
//                .edgesIgnoringSafeArea(.all)
//            RoundedRectangle(cornerRadius: 10)
//                .frame(width: 150, height: 150)
//                .modifier(NeumorphismModifier())
//        }
//    }
//}

//struct NeumorphismModifier: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .foregroundStyle(color.ForegroundColor)
//            .overlay(
//                RoundedRectangle(cornerRadius: 10)
//                    .stroke(color.BaseColor, lineWidth: 4)
//                    .shadow(color: color.LightShadowColor, radius: 2.4400977524630543, x: 3.1003887007389164, y: 3.1003887007389164)
//                    .shadow(color: color.DarkShadowColor, radius: 2.4400977524630543, x: -3.1003887007389164, y: -3.1003887007389164)
//                    .clipShape(
//                        RoundedRectangle(cornerRadius: 10)
//                    )
//            )
//    }
//}
//
//class color {
//    static let BaseColor: Color = Color(red: 0.12984204292297363, green: 0.12984612584114075, blue: 0.12984395027160645)
//    static let LightShadowColor: Color = Color(red: 0.05141066759824753, green: 0.05141475051641464, blue: 0.05141257494688034)
//    static let DarkShadowColor: Color = Color(red: 0.20827338099479675, green: 0.20827746391296387, blue: 0.20827531814575195)
//    static let ForegroundColor: LinearGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 0.12984204292297363, green: 0.12984612584114075, blue: 0.12984395027160645), Color(red: 0.12984204292297363, green: 0.12984612584114075, blue: 0.12984395027160645)]), startPoint: .topLeading, endPoint: .bottomTrailing)
//}
