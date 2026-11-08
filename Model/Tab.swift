//
//  Tab.swift
//  SwiftUiAppForiOS15
//
//  Created by Thrace on 8/29/22.
//

import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
}

var tabItems:[TabItem] = [
    TabItem(text: "Learn", icon: "house", tab: .home, color: .teal),
    TabItem(text: "Explore", icon: "magnifyingglass", tab: .explore, color: .blue),
    TabItem(text: "Notifications", icon: "bell", tab: .notifications, color: .indigo),
    TabItem(text: "Library", icon: "rectangle.stack", tab: .library, color: .pink)
]

enum Tab: String {
    case home
    case explore
    case notifications
    case library
}

struct TabData: Equatable {
    let height: CGFloat
    let width: CGFloat
}

//struct TabPreferenceKey: PreferenceKey {
//    static var defaultValue: TabData = TabData(height: 0, width: 0)
//    static func reduce(value: inout TabData, nextValue: () -> TabData) {
//        value = nextValue()
//    }
//}

struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
