//
//  ContentView.swift
//  Quran
//
//  Created by Rimah on 14/07/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 0.0
    @State private var isCorrectAnswerSelected = false
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
                            .font(Font.custom("IBMPlexSansArabic-SemiBold", size: 26))
                            .foregroundStyle(Color.white)
                        
                        
                        Text("﴿ٱقْتُلُواْ يُوسُفَ أَوِ ٱطْرَحُوهُ أَرْضًا ﴾")
                            .frame(width: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/, height: 100)
                            .background(.white)
                            .font(Font.custom("AmiriQuran-Regular", size: 30, relativeTo: .title))
                            .font(.title)
                            .bold()
                            .cornerRadius(15)
                        
                        
                        Text("سورة يوسف: ٩")
                            .font(Font.custom("IBMPlexSansArabic-SemiBold", size: 18))
                            .foregroundStyle(Color.white)
                        
                        ZStack(alignment: .leading) {
                            Rectangle()
                                .foregroundColor(Color(.systemGray5))
                                .frame(height: 10)
                            
                            Rectangle()
                                .foregroundColor(.yellow)
                                .frame(width: CGFloat(progress) * 300, height: 10)
                                .animation(.linear(duration: 1))
                        }
                        .frame(width: 300)
                        .padding()
                        
                        
                        Spacer()
                        
                        
                        Text("ماهو المعنى المقصود (أطرحوه أرضًا)  في الآيه الكريمة؟")
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color.black)
                            .bold()
                            .padding()
                        
                        
                        Button("أوقعوه في الأرض ") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .frame(width: 350, height: 60)
                        .foregroundColor(.black)
                        .background(Color(red: 0.892, green: 0.882, blue: 0.869))
                        .cornerRadius(15)
                        Button("ألقوه في أرض بعيدة") {
                            isCorrectAnswerSelected = true
                        }
                        .frame(width: 350, height: 60)
                        .foregroundColor(.black)
                        .background(isCorrectAnswerSelected ? Color(red: 0.692, green: 0.609, blue: 0.519) : Color(red: 0.892, green: 0.882, blue: 0.869))
                        .cornerRadius(15)
                        
                        Button("اضربوه ضربًا مبرحًا") {
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
                        
                    .onReceive(timer) { _ in
                                if progress < 1.0 {
                                    progress += 0.1
                                } else {
                                    timer.upstream.connect().cancel()
                                }
                            }
                        
                        
                    }
                    
                }
                
            }
            
        }
    }
#Preview {
    ContentView()
}
