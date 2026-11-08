//
//  Cartoon.swift
//  DailyDoseApp
//
//  Created by Thrace on 12/31/22.
//

import SwiftUI

struct ComicItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
}

var comicItems:[TabItem] = [
    TabItem(text: "Learn", icon: "house", tab: .home, color: .teal),
    TabItem(text: "Explore", icon: "magnifyingglass", tab: .explore, color: .blue),
    TabItem(text: "Notifications", icon: "bell", tab: .notifications, color: .indigo),
    TabItem(text: "Library", icon: "rectangle.stack", tab: .library, color: .pink)
]

enum Calendar: String {
    case farside
    case calvin
    case peanuts
    case wordOfDay
    case history
    case oatmeal
    case garfield
}

//enum Tab: String {
//    case home
//    case explore
//    case notifications
//    case library
//}
//
//struct TabData: Equatable {
//    let height: CGFloat
//    let width: CGFloat
//}
//
//struct TabPreferenceKey: PreferenceKey {
//    static var defaultValue: CGFloat = 0
//    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
//        value = nextValue()
//    }
//}
