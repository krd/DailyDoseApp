//
//  Styles.swift
//  SwiftUiAppForiOS15
//
//  Created by Thrace on 8/25/22.
//

import SwiftUI

struct StrokeStyle: ViewModifier {
    
    let cornerRadius: CGFloat
    
    @Environment(\.colorScheme)
    var colorScheme
    
    func body(content: Content) -> some View {
        content.overlay(
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .stroke(
                    .linearGradient(
                        colors: [
                            .white.opacity( colorScheme == .dark ? 0.1 : 0.3),
                            .black.opacity(
                                colorScheme == .dark ? 0.3 : 0.1)
                        ], startPoint: .top, endPoint: .bottom
                    )
                )
                .blendMode(.overlay)
        )
    }
}

extension View {
    func strokeStyle(cornerRadius: CGFloat) -> some View {
        modifier(StrokeStyle(cornerRadius: cornerRadius))
    }
}

struct OverlayImageStyle: ViewModifier {
    
    let imageName: String
    
    func body(content: Content) -> some View {
        content.overlay(Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 230)
            .offset(x: 32, y: -85))
    }
}

extension View {
    func overlayImageStyle(_ image: String) -> some View {
        modifier(OverlayImageStyle(imageName: image))
    }
}
