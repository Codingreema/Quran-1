//
//  third.swift
//  Quran
//
//  Created by Rimah on 15/07/1445 AH.
//

import SwiftUI

struct third: View {
    @State private var isCorrectAnswerSelected = false
    
    @State private var progress: Double = 0.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image("header")
                        .resizable()
                        .offset(x: 0, y: -500 )                                    .ignoresSafeArea()
                    
                    VStack {
                        
                        Text("تصحيح المعاني")
                            .font(Font.custom("IBMPlexSansArabic-SemiBold", size: 30))
                            .foregroundStyle(Color.white)
                            .bold()
                        
                        Text("﴿فَانْفِرُوا ثُبَاتٍ ۗ﴾")
                            .frame(width: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/, height: 100)
                            .background(.white)
                            .font(Font.custom("AmiriQuran-Regular", size: 30, relativeTo: .title))
                            .font(.title)
                            .bold()
                            .cornerRadius(15)
                        
                        Text("سورة النساء: ٧١")
                            .font(Font.custom("IBMPlexSansArabic-SemiBold", size: 18))
                            .foregroundStyle(Color.white)
                        
                        // timeer
                        VStack {
                            ZStack(alignment: .leading) {
                                GeometryReader { geometry in
                                    Rectangle()
                                        .foregroundColor(Color(.systemGray5))
                                        .frame(height: 10)
                                    
                                    Rectangle()
                                        .foregroundColor(.yellow)
                                        .frame(width: CGFloat(progress) * geometry.size.width, height: 10)
                                        .animation(.linear(duration: 1))
                                    
                                    Circle()
                                        .foregroundColor(.yellow)
                                        .frame(width: 20, height: 20)
                                        .offset(x: CGFloat(progress) * geometry.size.width - 10, y: -5)
                                        .animation(.linear(duration: 1))
                                     
                                        
                                        
                                }
                            }
                            .frame(width: 300)
                            .padding()
                        }
                        .onReceive(timer) { _ in
                            if progress < 1.0 {
                                progress += 0.1
                            } else {
                                timer.upstream.connect().cancel()
                            }
                        }
                        .frame(width: 300)
                        .padding()
                        
                        
                        
                        Spacer()
                        
                        
                        Text("ماهو المعنى المقصود (ثُبَاتٍ)  في الآيه الكريمة؟")
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color.black)
                            .bold()
                            .padding()
                        
                        
                        Button("جماعات متفرقه") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .frame(width: 350, height: 60)
                        .foregroundColor(.black)
                        .background(Color(red: 0.892, green: 0.882, blue: 0.869))
                        .cornerRadius(15)
                        Button("جماعه واحدة") {
                            isCorrectAnswerSelected = true
                        }
                        .frame(width: 350, height: 60)
                        .foregroundColor(.black)
                        .background(isCorrectAnswerSelected ? Color(red: 0.692, green: 0.609, blue: 0.519) : Color(red: 0.892, green: 0.882, blue: 0.869))
                        .cornerRadius(15)
                        
                        Button("أفراد متفرقين") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .frame(width: 350, height: 60)
                        .foregroundColor(.black)
                        .background(Color(red: 0.892, green: 0.882, blue: 0.869))
                        .cornerRadius(15)
                        
                        Spacer()
                        
                        
                        NavigationLink(destination: ContentView()) {
                            Image("buttonSave")
                        }
                    }
                }
                
            }
            
        }
        
    }
}

#Preview {
    third()
}
