////
////  PagingContentView.swift
////  DailyDoseApp
////
////  Created by Thrace on 12/19/22.
////
//
////import UIKit
//import SwiftUI
//
//struct TileView: View {
//    
//    let icon: String
//    
//    var body: some View {
//        VStack {
//            ZStack {
//                Rectangle()
//                    .fill(Color.gray)
//                    .cornerRadius(20.0)
//                Image(systemName: icon)
//                    .imageScale(.large)
//                    .font(.largeTitle)
//            }
//        }
//    }
//}
//
////struct PagingContentView: View {
////    var body: some View {
////        ScrollViewReader { scrollProxy in
////            VStack(spacing: 20) {
////                HStack(spacing: 30) {
////                    Grid(scrollView: 1, color: Color.green.opacity(0.5))
////
////                    Grid(scrollView: 2, color: Color.blue.opacity(0.5))
////                }
////
////                Button("Scroll") {
////                    withAnimation {
////                        scrollProxy.scrollTo("ScrollView2_5_1", anchor: .topLeading)
////                    }
////                }
////            }
////        }
////    }
////
////    struct Grid: View {
////        let scrollView: Int
////        let color: Color
////        let selected = Color.red.opacity(0.5)
////
////        var body: some View {
////            ScrollView([.vertical, .horizontal]) {
////                VStack {
////                    ForEach(0..<30) { row in
////                        HStack {
////                            ForEach(0..<30) { col in
////                                Rectangle()
////                                    .fill(scrollView == 2 && row == 5 && col == 1 ? selected : color)
////                                    .overlay(Text("(\(row), \(col))")).frame(width: 70, height: 50)
////                                    .id("ScrollView\(scrollView)_\(row)_\(col)")
////                            }
////                        }
////                    }
////                }
////            }.frame(width: 200, height: 200).border(Color.primary)
////        }
////    }
////}
//
//struct PagingContentView: View {
//
//    @State private var scrollEffectValue: Double = 13
//    @State private var activePageIndex: Int = 1
//    @State private var showingAlert:Bool = false
//
//    let tileWidth: CGFloat = 400
//    let tilePadding: CGFloat = 100
//    let numberOfTiles: Int = 5
//
//    var body: some View {
//        VStack {
//        Spacer()
//        GeometryReader { geometry in
//            VStack {
//                Text(" Screen width: \(geometry.size.width)")
//                Text(" Tile width: \(self.tileWidth - 300)")
//                Text(" Number of Tiles: \(self.numberOfTiles)")
//                Text(" Tile Padding: \(self.tilePadding)")
//                Text(" first tile title: \(introScreens[0].title)")
//            }
////            PagesScrollView(activePageIndex: self.$activePageIndex, itemCount:self.numberOfTiles ,pageWidth:geometry.size.width, tileWidth:self.tileWidth, tilePadding: self.tilePadding){
//            PagesScrollView(activePageIndex: self.$activePageIndex, itemCount:self.numberOfTiles ,pageWidth:geometry.size.width, tileWidth:geometry.size.width - 100, tilePadding: self.tilePadding){
////                ForEach(0 ..< self.numberOfTiles) { index in
////                ForEach(introScreens, id: \.self) { screen in
//                ForEach(0 ..< self.numberOfTiles) { index in
//                    GeometryReader { geometry2 in
////                        introScreens[index]
//                            
////                        Text("Booya \(screen.title)").font(.title).bold()
//                        
////                        screen
////                            .onTapGesture {
////                                Button("Show Alert") {                                            showingAlert = true
////                                    print("showing alert...")
////                                }
////                                .alert(isPresented: $showingAlert) {
////                                    Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
////                                }
////                            }
//                    }
//                }
//            }
//        }
//        Spacer()
//        }
//    }
//
//    var startPages = {
//
//    }
//}
//
//
//
//struct PagingContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        PagingContentView()
//    }
//}
