//
//  ContentView.swift
//  NeumorphicDesignTutorialMedium
//
//  Created by Thrace on 11/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    @State var color: Color = .teal
    @State var tabItemWidth: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea(.all)
//            Image("ultraLightBackground")
//                .resizable()
//            Image("shiney2")
//                .ignoresSafeArea(.all)
            switch selectedTab {
            case .home:
//                            HomeView()
                CardView()
            case .explore:
                CalendarView()
            case .notifications:
                FavoritesView()
            case .library:
                AccountView()
            }
            TabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 13 Pro")
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13  Pro")
    }
}
