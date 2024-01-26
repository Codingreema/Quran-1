//
//  second.swift
//  Quran
//
//  Created by Rimah on 15/07/1445 AH.
//

import SwiftUI
import Combine

struct Second: View {
    @State private var progress: Double = 0.0
    @State private var isCorrectAnswerSelected = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image("header")
                        .resizable()
                        .offset(x: 0, y: -500 )
                        .ignoresSafeArea()
                    
                    VStack {
                        Text("تصحيح المعاني")
                            .font(Font.custom("IBMPlexSansArabic-SemiBold", size: 30))
                            .foregroundStyle(Color.white)
                            .bold()
                        
                        Text("﴿فَإِنْ أَرَادَا فِصَالًا عَن تَرَاضٍ مِّنْهُمَا وَتَشَاوُرٍ فَلَا جُنَاحَ عَلَيْهِمَا ۗ﴾")
                            .frame(width: 350.0, height: 100)
                            .background(.white)
                            .font(Font.custom("AmiriQuran-Regular", size: 20))
                            .font(.title)
                            .bold()
                            .cornerRadius(15)
                        
                        // timer
                        
                   
                        
                        
                        Text("سورة البقرة: ٢٣٣")
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
                        
                        Text("ماهو المعنى المقصود (فِصَالاً)  في الآيه الكريمة؟")
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color.black)
                            .bold()
                            .padding()
                        
                        
                        
                        Button("الطلاق") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .frame(width: 350, height: 60)
                        .foregroundColor(.black)
                        .background(Color(red: 0.892, green: 0.882, blue: 0.869))
                        .cornerRadius(15)
                        
                        Button("الهجرة") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .frame(width: 350, height: 60)
                        .foregroundColor(.black)
                        .background(Color(red: 0.892, green: 0.882, blue: 0.869))
                        .cornerRadius(15)
                        
                        Button("الفطام") {
                            isCorrectAnswerSelected = true
                        }
                        .frame(width: 350, height: 60)
                        .foregroundColor(.black)
                        .background(isCorrectAnswerSelected ? Color(red: 0.692, green: 0.609, blue: 0.519) : Color(red: 0.892, green: 0.882, blue: 0.869))
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
    Second()
}
