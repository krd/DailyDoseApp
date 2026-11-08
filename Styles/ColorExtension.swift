//
//  ColorExtension.swift
//  DailyDoseApp
//
//  Created by Thrace on 12/14/22.
//

import SwiftUI

extension Color {
    
    static let primary_color = Color("EFF0F9_282C31")
    static let main_color = Color(hex: "657592")
    static let main_white = Color("657592_F4F4F4")
    
    static let text_header = Color("333333_F4F4F4")
    static let text_primary = Color("657592_C6CBDA")
    static let text_primary_f1 = Color.text_primary.opacity(0.8)
    
    static let disc_line = Color("666666_F4F4F4")
    
    // From Neumorphism App
    static let BaseColor: Color = Color(red: 0.9372549057006836, green: 0.9411764740943909, blue: 0.9764706492424011)
    static let LightShadowColor: Color = Color(red: 0.8588235378265381, green: 0.8627451062202454, blue: 0.8980392813682556)
    static let DarkShadowColor: Color = Color(red: 1.015686273574829, green: 1.0196079015731812, blue: 1.0549020767211914)
    static let ForegroundColor: LinearGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 0.9372549057006836, green: 0.9411764740943909, blue: 0.9764706492424011), Color(red: 0.9372549057006836, green: 0.9411764740943909, blue: 0.9764706492424011)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    // From neumorphic 3rd party
    static let defaultMainColor = Color(red: 0.925, green: 0.941, blue: 0.953)
    static let defaultSecondaryColor = Color(red: 0.482, green: 0.502, blue: 0.549)
    static let defaultLightShadowSolidColor = Color(red: 1.000, green: 1.000, blue: 1.000)
    static let defaultDarkShadowSolidColor = Color(red: 0.820, green: 0.851, blue: 0.902)

    static let darkThemeMainColor = Color(red: 0.188, green: 0.192, blue: 0.208)
    static let darkThemeSecondaryColor = Color(red: 0.910, green: 0.910, blue: 0.910)
    static let darkThemeLightShadowSolidColor = Color(red: 0.243, green: 0.247, blue: 0.275)
    static let darkThemeDarkShadowSolidColor = Color(red: 0.137, green: 0.137, blue: 0.137)
    
    
    
    init(hex: String, alpha: Double = 1) {
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if (cString.hasPrefix("#")) { cString.remove(at: cString.startIndex) }
        
        let scanner = Scanner(string: cString)
        scanner.currentIndex = scanner.string.startIndex
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        self.init(.sRGB, red: Double(r) / 0xff, green: Double(g) / 0xff, blue:  Double(b) / 0xff, opacity: alpha)
    }
}
