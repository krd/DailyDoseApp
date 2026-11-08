//
//  ComicDetailView.swift
//  DailyDoseApp
//
//  Created by Thrace on 1/3/23.
//

import SwiftUI

struct ComicDetailView: View {
    
    var namespace: Namespace.ID
    @Binding var show: Bool
      
    var body: some View {
        ZStack {
            ScrollView {
                cover
            }
//            .background(Color(red: 15, green: 5, blue: 42))
            .ignoresSafeArea(.all)
            
            Button {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .font(.body.weight(.bold))
                    .foregroundColor(.black)
                    .padding(8)
                    .background(.ultraThinMaterial, in: Circle())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding()
        }
    }
    
    var cover: some View {
        VStack {
            Spacer(minLength: 200)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 500)
        .foregroundColor(.black)
        .background(
            Image("006-a")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "image", in: namespace)
        )
        .background(
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        )
        .overlay(
            VStack(alignment: .leading, spacing: 12) {
                
                Text("January 3, 2023")
                    .font(.title.weight(.bold))
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .leading)
//                Text("20 Sections - 3 hours".uppercased())
//                    .font(.footnote.weight(.semibold))
//                    .matchedGeometryEffect(id: "subtitle", in: namespace)
                Text("\"It's time we face reality, my friends. ... We're not exactly rocket scientists.\"")
                    .font(.body)
                    .italic()
                    .matchedGeometryEffect(id: "text", in: namespace)
//                Divider()
//                HStack {
//                    Image("Baghead")
//                        .resizable()
//                        .frame(width: 26, height: 26)
//                        .cornerRadius(10)
//                        .background(.ultraThinMaterial,
//                                    in:
//                                        RoundedRectangle(cornerRadius:
//                                                            18, style: .continuous))
//                    Text("Kyle Dyer FTW!")
//                    Spacer()
//                    Image(systemName: "heart")
//                        .font(.title2)
//                }
            }
                .padding(20)
                .background(
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .matchedGeometryEffect(id: "blur", in: namespace)
                )
                .offset(y: 250)
                .padding(20)
        )
    }
}

struct ComicDetailView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        ComicDetailView(namespace: namespace, show: .constant(false))
    }
}
