//
//  ContentView.swift
//  travel
//
//  Created by cassia franco on 06/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DestaqueView()
                .tabItem {
                    Text ("Destaques")
                    Image("icone-destaques")
                }
            ListDePacotesView()
                .tabItem {
                    Text("Pacotes")
                    Image("icone-mala")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
