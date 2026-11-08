//
//  SoftInnerrShadowModifier.swift
//  DailyDoseApp
//
//  Created by Thrace on 12/14/22.
//

import SwiftUI


struct InnerShadowSoftView: View {
    var body: some View {
        ZStack {
            Color.primary
                .edgesIgnoringSafeArea(.all)
            Circle()
                .frame(width: 150, height: 150)
                .innerShadowSoft(Circle())
        }
    }
}

private struct InnerShadowSoftViewModifier<S: Shape> : ViewModifier {
    
    var shape: S
    var darkShadowColor : Color = .black
    var lightShadowColor : Color = .white
    var spread: CGFloat = 0.5    //The value of spread is between 0 to 1. Higher value makes the shadow look more intense.
    var radius: CGFloat = 10
    
    init(shape: S, darkShadowColor: Color = .black, lightShadowColor: Color = .white, spread: CGFloat = 0.5, radius: CGFloat = 10 ) {
        self.shape = shape
        self.darkShadowColor = darkShadowColor
        self.lightShadowColor = lightShadowColor
        self.spread = spread
        self.radius = radius
    }

    func strokeLineWidth(_ geo: GeometryProxy) -> CGFloat {
        return geo.size.width * 0.10
    }
    
     func strokeLineScale(_ geo: GeometryProxy) -> CGFloat {
        let lineWidth = strokeLineWidth(geo)
        return geo.size.width / CGFloat(geo.size.width - lineWidth)
    }
    
     func shadowOffset(_ geo: GeometryProxy) -> CGFloat {
        return (geo.size.width <= geo.size.height ? geo.size.width : geo.size.height) * 0.5 * min(max(spread, 0), 1)
    }
    

    func addSoftInnerShadow(_ content: InnerShadowSoftViewModifier.Content) -> some View {
        return GeometryReader { geo in
            
            self.shape.fill(self.lightShadowColor)
                .mask(
                    shape
                .foregroundColor(.black)
                .background(Color.white)
                .compositingGroup()
                .luminanceToAlpha()
                )
                .offset(x: self.shadowOffset(geo) , y: self.shadowOffset(geo))
                .blur(radius: self.radius)
                .shadow(color: self.lightShadowColor, radius: self.radius, x: -self.shadowOffset(geo)/2, y: -self.shadowOffset(geo)/2 )
                .mask(
                    self.shape
                )
                .offset(x: self.shadowOffset(geo) , y: self.shadowOffset(geo))
                .blur(radius: self.radius)
                .shadow(color: self.lightShadowColor, radius: self.radius, x: -self.shadowOffset(geo)/2, y: -self.shadowOffset(geo)/2 )
                .mask(
                    self.shape
                )
                .overlay(
                    self.shape
                        .fill(self.darkShadowColor)
                        .offset(x: self.shadowOffset(geo) , y: self.shadowOffset(geo))
                        .blur(radius: self.radius)
                        .shadow(color: self.lightShadowColor, radius: self.radius, x: -self.shadowOffset(geo)/2, y: -self.shadowOffset(geo)/2 )
                        .mask(
                            self.shape
                        )
                        .offset(x: -self.shadowOffset(geo) , y: -self.shadowOffset(geo))
                        .blur(radius: self.radius)
                        .shadow(color: self.darkShadowColor, radius: self.radius, x: self.shadowOffset(geo)/2, y: self.shadowOffset(geo)/2 )
                )
                .mask(
                    self.shape
                )
        }
    }

    func body(content: Content) -> some View {
        content.overlay(
            addSoftInnerShadow(content)
        )
    }
}


//For more readable, we extend the View and create a softInnerShadow function.
extension View {

    public func innerShadowSoft<S : Shape>(_ content: S, darkShadow: Color = Color("DarkShadowColor"), lightShadow: Color = Color("LightShadowColor"), spread: CGFloat = 0.5, radius: CGFloat = 10) -> some View {
        modifier(
            InnerShadowSoftViewModifier(shape: content, darkShadowColor: darkShadow, lightShadowColor: lightShadow, spread: spread, radius: radius)
        )
    }
    
}

struct InnerShadowSoftView_Previews: PreviewProvider {
    static var previews: some View {
        InnerShadowSoftView().preferredColorScheme(.light)
        InnerShadowSoftView().preferredColorScheme(.dark)
    }
}
