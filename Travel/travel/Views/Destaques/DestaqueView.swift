//
//  ContentView.swift
//  travel
//
//  Created by cassia franco on 13/07/21.
//

import SwiftUI

struct DestaqueView: View {

    @Environment(\.horizontalSizeClass) var horizontalSizeClass 

    var body: some View {

        
        
        NavigationView {
            GeometryReader { view in
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                    List(viagens) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationBarTitle("Localização")) {
                            CelulaViagemView(viagem: viagem)
                        }
                    }.navigationBarTitle("")
                }
            }
            .edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct DestaqueView_Previews: PreviewProvider {
    static var previews: some View {
        DestaqueView()
    }
}
