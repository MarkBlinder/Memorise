//
//  ContentView.swift
//  Memorise
//
//  Created by Mark Blinder on 5/25/20.
//  Copyright © 2020 Mark Blinder. All rights reserved.
//

import SwiftUI // SwiftUI package

// struct is essentially a container
// ContentView is "funtionally" a view (this is functional porgramming)
struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}


struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
            }
        }
    }
}






























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
