//
//  ContentView.swift
//  Memorize
//
//  Created by AMTK on 2025/03/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(lineWidth: 2)
            Text("👻").font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
