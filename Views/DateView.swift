//
//  CardView.swift
//  DailyDoseApp
//
//  Created by Thrace on 12/12/22.
//

import SwiftUI

struct DateView: View {
    
    var namespace: Namespace.ID
    @Binding var show: Bool
    
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: 12) {
                Text("January 3, 2023")
                    .font(.title.weight(.bold))
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .shadow(color: Color(red: 0.50, green: 0.50, blue: 0.50),
                            radius: 2.00, x: 1.00, y: 1.00)
//                Text("20 Sections - 3 hours".uppercased())
//                    .font(.footnote.weight(.semibold))
//                    .matchedGeometryEffect(id: "subtitle", in: namespace)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .shadow(color: Color(red: 0.50, green: 0.50, blue: 0.50),
//                            radius: 2.00, x: 1.00, y: 2.00)
//                Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
//                    .font(.footnote)
//                    .matchedGeometryEffect(id: "text", in: namespace)
//                    .shadow(color: Color(red: 0.50, green: 0.50, blue: 0.50),
//                            radius: 2.00, x: 1.00, y: 2.00)
            }
            .padding(20)
            .background(
                Rectangle()
//                    .fill(.ultraThinMaterial)
                    .fill(Color.Neumorphic.main)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .blur(radius: 40)
                    .matchedGeometryEffect(id: "blur", in: namespace)
            )
        }
        .foregroundColor(.white)
        .background(
            Image("006-a")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "image", in: namespace)
                .padding()
        )
//        .background(
//            Image("1")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .matchedGeometryEffect(id: "background", in: namespace)
//        )
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        )
        .frame(height: 300)
        .padding(20)
        
    }
}

struct DateView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        DateView(namespace: namespace,show: .constant(false)).preferredColorScheme(.light)
        DateView(namespace: namespace,show: .constant(false)).preferredColorScheme(.dark)
    }
}
