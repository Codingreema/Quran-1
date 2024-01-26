//
//  progress.swift
//  Quran
//
//  Created by Rimah on 15/07/1445 AH.
//

import SwiftUI
import Combine

struct progress: View {
  @State private var progress: CGFloat = 0.0

  let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

  var body: some View {
    ZStack(alignment: .leading) {
      Rectangle()
        .frame(width: 150, height: 10)
        .opacity(0.3)
        .foregroundColor(.gray)

      Rectangle()
        .frame(width: progress * 150, height: 10)
        .foregroundColor(.green)
        .animation(.easeInOut, value: progress)
    }
    .onReceive(timer) { _ in
      if progress < 1.0 {
        progress += 0.01
      }
    }
  }
}

struct SecondView: View {
  var body: some View {
    VStack {
      ZStack {
        Image("header")
          .resizable()
          .offset(x: 0, y: -500)
          .ignoresSafeArea()

        VStack {
          Text("تصحيح المعاني")
            .font(Font.custom("IBMPlexSansArabic-SemiBold", size: 30))
            .foregroundStyle(Color.white)
            .bold()

          Text("﴿فَإِنْ أَرَادَا فِصَالًا عَن تَرَاضٍ مِّنْهُمَا وَتَشَاوُرٍ فَلَا جُنَاحَ عَلَيْهِمَا ۗ﴾")
            .frame(width: 350.0, height: 150)
            .background(.white)
            .font(Font.custom("AmiriQuran-Regular", size: 30, relativeTo: .title))
            .font(.title)
            .bold()
            .cornerRadius(15)

          Text("سورة البقرة: ٢٣٣")
            .font(Font.custom("IBMPlexSansArabic-SemiBold", size: 18))
            .foregroundStyle(Color.white)

          Spacer()

          Text("ماهو المعنى المقصود (فِصَالاً)  في الآيه الكريمة؟")
            .multilineTextAlignment(.center)
            .foregroundStyle(Color.black)
            .bold()
            .padding()

          Button("الطلاق") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
          }
          .frame(width: 150, height: 30)
          .foregroundColor(.black)
          .background(Color(red: 0.892, green: 0.882, blue: 0.869))
          .cornerRadius(15)

          Button("الهجرة") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
          }
          .frame(width: 150, height: 30)
          .foregroundColor(.black)
          .background(Color(red: 0.892, green: 0.882, blue: 0.869))
          .cornerRadius(15)

          Button("الفطام") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
          }
          .frame(width: 150, height: 30)
          .foregroundColor(.black)
          .background(Color(red: 0.892, green: 0.882, blue: 0.869))
          .cornerRadius(15)

          Spacer()

          Button(action: {
            // Add your desired action here when the button is tapped
          }) {
            Image("buttonSave")
              .resizable()
              .frame(width: 100, height: 100)
          }
          .buttonStyle(PlainButtonStyle())
        }
      }
    }
  }
}
#Preview {
    progress()
}
