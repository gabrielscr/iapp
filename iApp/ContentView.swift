//
//  ContentView.swift
//  iApp
//
//  Created by Gabriel Rocha on 04/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = "Hello!";
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .renderingMode(.original)
                .padding()
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(text)
            Button("Mudar") {
                text = "Mudou!"
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
