//
//  ContentView.swift
//  Pranav Srinivasan Business Card
//
//  Created by Pranav Srinivasan on 7/13/20.
//  Copyright © 2020 Pranav Srinivasan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.60, blue: 0.86, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Pranav Picture")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 2)
                )
                Text("Pranav Sankar Srinivasan")
                    .font(Font.custom("Pacifico-Regular", size: 30))
                    .foregroundColor(.white)
                    .bold()
                Text("UCLA Computer Engineering Student")
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                Divider().background(Color.clear)
                Text("LinkedIn")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                InfoView(image: "doc.richtext", text: "linkedin.com/in/pranavsankars")
                InfoView(image: "envelope", text: "pranavsankars@ucla.edu")
                InfoView(image: "", text: "</> github.com/pranavs2001")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
