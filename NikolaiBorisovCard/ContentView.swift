//
//  ContentView.swift
//  NikolaiBorisovCard
//
//  Created by NIKOLAI BORISOV on 23.01.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.60, blue: 0.86)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                Image("NIKOLAI")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 7)
                    )
                Text("NIKOLAI  BORISOV")
                    .font(Font.custom("JosefinSlab-VariableFont_wght", size: 30))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                InfoView(text: "+7 (927) 362 82 89", imageName: "phone.fill")
                InfoView(text: "Borisov_n_88@mail.ru", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

