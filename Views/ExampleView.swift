//
//  CardView.swift
//  DailyDoseApp
//
//  Created by Thrace on 12/12/22.
//

import SwiftUI
import Neumorphic

struct ExampleView: View {
    
    var count = 0
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            ZStack {
                Color.Neumorphic.main.edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 20) {
                    
                    ZStack {
                        Circle()
                            .fill(Color.Neumorphic.main)
                            .frame(width: 200, height: 200)
                            .softInnerShadow(Circle(),darkShadow: Color.Neumorphic.darkShadow, lightShadow: Color.Neumorphic.lightShadow, spread: 0.5, radius: 10)
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(25)
                            .foregroundColor(Color(red: 52/255, green: 57/255, blue: 133/255))
                            .offset(y: 10)
                    }
                    
                    Button {
                     
                    } label: {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(25)
                        //                            .foregroundColor(Color(red: 52/255, green: 57/255, blue: 133/255))
                            .foregroundColor(Color(red: 52/255, green: 57/255, blue: 133/255))  // dark purple
                            .background(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(
                                        .shadow(.inner(color: Color(red: 197/255, green: 197/255, blue: 197/255),radius: 3, x:3, y: 3))
                                        .shadow(.inner(color: .white, radius: 3, x: -3, y: -3))
                                    )
                                //                                    .foregroundColor(Color.Neumorphic.lightShadow))
                                    .foregroundColor(Color.Neumorphic.main))
                        // .foregroundColor(Color(red: 236/255, green: 234/255, blue: 235/255)))
                    }
                    
                    Button(action: {}){
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(25)
                            .foregroundColor(Color(red: 52/255, green: 57/255, blue: 133/255))
                            .background(
                                Circle()
                                    .fill(
                                        .shadow(.inner(color: Color(red: 197/255, green: 197/255, blue: 197/255),radius: 5, x:3, y: 3))
                                        .shadow(.inner(color: .white, radius:5, x: -3, y: -3))
                                    )
                                    .foregroundColor(Color.Neumorphic.lightShadow))
                        //                                            .foregroundColor(Color(red: 236/255, green: 234/255, blue: 235/255)))
                    }
                    
                    
                    
                    
                }
            }
            //            ZStack {
            //                Color.primary_color.ignoresSafeArea(.all)
            //                Circle()
            //                    .fill(Color.primary_color)
            //                    .frame(width: 200, height: 200)
            //                    .softOuterShadow(darkShadow: .DarkShadow, lightShadow: .LightShadow, offset: 8, radius: 10 )
            //
            //                Circle()
            //                    .fill(Color.primary_color)
            //                    .frame(width: 185, height: 185)
            //                    .innerShadowSoft(Circle())
            //
            //                Circle()
            //                    .fill(Color.primary_color)
            //                    .frame(width: 175, height: 175)
            //                    .softOuterShadow(darkShadow: .LightShadow, lightShadow: .LightShadow, offset: 2, radius: 3 )
            
            //                Circle()
            //                    .fill(Color.primary_color)
            //                    .frame(width: 155, height: 155)
            //                    .innerShadow(Circle())
            //
            //                Circle()
            //                    .fill(Color.primary_color)
            //                    .frame(width: 140, height: 140)
            //                    .softOuterShadow()
            //            }
            
            
            //            Circle()
            //                .fill(Color.primary_color)
            //                .frame(width: 200, height: 200)
            //                .softOuterShadow()
            //
            //            Circle()
            //                .foregroundColor(.LightShadow)
            //                .frame(width: 150, height: 150)
            //                .innerShadowSoft(Circle(), darkShadow: .primary_color, radius: 6)
            //
            //            RoundedRectangle(cornerRadius: 10)
            //                .foregroundColor(Color.primary_color)
            //                .frame(width: 150, height: 150)
            //                .innerShadow(RoundedRectangle(cornerRadius: 10))
        }
        
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView().preferredColorScheme(.light)
        ExampleView().preferredColorScheme(.dark)
    }
}
