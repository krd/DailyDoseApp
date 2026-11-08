//
//  CardView.swift
//  DailyDoseApp
//
//  Created by Thrace on 12/12/22.
//

import SwiftUI

struct CardView: View {
   
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            ZStack {
                Color.primary_color.edgesIgnoringSafeArea(.all)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 0.25)
                    //Color("Shadow"),
                    .foregroundColor(.disc_line)
                    .frame(width: 300, height: 150)
                    .neuShadow()
                    
                Circle()
                    .stroke(lineWidth: 0.25)
                    .foregroundColor(.disc_line)
                    .frame(width: 250, height: 250)
                    .innerShadow()
            }
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
