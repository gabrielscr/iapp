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
            CustomButton(text: $text)
        }
        .padding()
    }
}

struct CustomButton: View {
    @Binding var text: String
    
    var body: some View {
        Button(action: {
            text = "Mudou! Teste"
        }) {
            Text("Mudar")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
        }
    }
}

#Preview {
    ContentView()
}
