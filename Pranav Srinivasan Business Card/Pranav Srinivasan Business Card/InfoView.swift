//
//  InfoView.swift
//  Pranav Srinivasan Business Card
//
//  Created by Pranav Srinivasan on 7/14/20.
//  Copyright © 2020 Pranav Srinivasan. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let image: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)        //can also just fill rectangle with white color
            .overlay(
                HStack{
                    Image(systemName: image)
                    Text(text).foregroundColor(.black)
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(image: "doc.richtext", text: "Testing")
            .previewLayout(.sizeThatFits)
    }
}
