//
//  ContentView.swift
//  iApp
//
//  Created by Gabriel Rocha on 04/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Text("Tela 1")) {
                    Label("Tela 1", systemImage: "1.circle")
                }
                NavigationLink(destination: Text("Tela 2")) {
                    Label("Tela 2", systemImage: "2.circle")
                }
                NavigationLink(destination: Text("Tela 3")) {
                    Label("Tela 3", systemImage: "3.circle")
                }
            }
            .navigationTitle("iApp")
            
            Text("Selecione uma tela")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    ContentView()
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
