//
//  IntroView.swift
//  DailyDoseApp
//
//  Created by Thrace on 12/19/22.
//

import SwiftUI

struct IntroPageView: View {
    
    @State private var step = 1
    
    var body: some View {
        ZStack {
            Image("BlueWaves")
                .resizable()
                .ignoresSafeArea(.all)
            
            VStack {
                
                Text("Welcome to")
                    .font(.largeTitle)
                    .padding(.top)
                Text("Daily Dose Calendar")
                    .font(.largeTitle).bold()
                
                GeometryReader { gp in
                    HStack {
                        VStack {
                            ZStack {
                                Image("calendar-blob-1")
                                    .resizable()
                                    .frame(width: 420, height: 297) // 675 X 495
                                    .offset(y: -60)
                                    .animation(Animation.interpolatingSpring(stiffness: 30, damping: 7).delay(0.03), value: step)
                                
                                Image("calendar-blob-2")
                                    .resizable()
                                    .frame(width: 440, height: 360)  // 675 X 495
                                    .offset(y: -110)
                                    .opacity(0.8)
                                    .animation(Animation.interpolatingSpring(stiffness: 25, damping: 7).delay(0.06), value: step)
                                
                                Image("calendar-1")
                                    .resizable()
                                    .frame(width: 240, height: 270)  // 270 x 198, 337.5 x 247.5
                                    .offset(y: -60)
                                    .animation(Animation.interpolatingSpring(stiffness: 40, damping: 7).delay(0.1), value: step)
                            }
                            Text("Learn by watching videos and looking at code.")
                                .font(.title2).foregroundColor(.black)
                                .padding()
                                .animation(Animation.interpolatingSpring(stiffness: 40, damping: 7).delay(0.2), value: step)
                        }
                        .frame(width: gp.frame(in: .global).width)
                        
                        VStack(spacing: 40) {
                            Image("peopleProcess-1")
                                .resizable()
                                .frame(width: 371.25, height: 347.25)
                            Text("Step-by-step exercises, quizzes and practical challenges.")
                                .padding()
                                .fixedSize(horizontal: false, vertical: true)
                                .animation(Animation.interpolatingSpring(stiffness: 40, damping: 7).delay(0.1), value: step)
                        }.frame(width: gp.frame(in: .global).width)
                        
                        VStack(spacing: 40) {
                            Image("peopleProcess-2")
                                .resizable()
                                .frame(width: 370.25, height: 310)
                            Text("Master SwiftUI Animations Today!")
                                .padding()
                                .fixedSize(horizontal: false, vertical: true)
                                .animation(Animation.interpolatingSpring(stiffness: 40, damping: 7).delay(0.1), value: step)
                        }.frame(width: gp.frame(in: .global).width)
                    }
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.Neumorphic.lightShadow)
                    .font(.title)
                    .padding(.vertical, 60)
                    .frame(width: gp.frame(in: .global).width * 3) // Make HStack 3X width of device
                    .frame(maxHeight: .infinity)
                    .offset(x: step == 1 ? 0
                            : step == 2 ? -gp.frame(in: .global).width
                            : -gp.frame(in: .global).width * 2)
                    .animation(Animation.interpolatingSpring(stiffness: 40, damping: 8), value: step)
                }
                
                HStack(spacing: 20) {
                    Button(action: { step = 1 }) {
                        Text("1")
                            .padding()
                            .background(Circle().fill(Color("Accent2")).shadow(radius: 10))
                            .scaleEffect(step == 1 ? 1 : 0.65)
                    }
                    
                    Button(action: { step = 2 }) {
                        Text("2")
                            .padding()
                            .background(Circle().fill(Color("Accent2")).shadow(radius: 10))
                            .scaleEffect(step == 2 ? 1 : 0.65)
                    }
                    
                    Button(action: { step = 3 }) {
                        Text("3")
                            .padding()
                            .background(Circle().fill(Color("Accent2")).shadow(radius: 10))
                            .scaleEffect(step == 3 ? 1 : 0.65)
                    }
                }
                .animation(.spring(response: 0.4, dampingFraction: 0.5), value: step)
                .font(.largeTitle)
                .tint(Color("LightShade2"))
                
                Button(action: {}) {
                    HStack {
                        Text("Continue")
                        Image(systemName: "chevron.right")
                    }
                    .padding(.horizontal)
                    .padding()
                    .background(Capsule().fill(Color("Accent2")))
                    .foregroundColor(Color("LightShade2"))
                    .opacity(step == 3 ? 1 : 0)
                    .animation(.none, value: step) // I don't want to animate the opacity ☝️
                    .scaleEffect(step == 3 ? 1 : 0.01)
                    .animation(Animation.interpolatingSpring(stiffness: 50, damping: 10, initialVelocity: 10), value: step)
                }
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroPageView()
    }
}
