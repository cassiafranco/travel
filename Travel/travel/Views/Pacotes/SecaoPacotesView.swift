//
//  SecaoPacotesView.swift
//  travel
//
//  Created by cassia franco on 20/07/21.
//

import SwiftUI

struct SecaoPacotesView: View {
    
    //MARK: Atributos
    
    var nomeDaSecao: String
    var pacotes: [PacoteDeViagem]

    var body: some View {
        VStack(alignment: .leading) {
            Text(self.nomeDaSecao)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top,5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(self.pacotes){ pacote in
                        NavigationLink(
                            destination: DestalheViagemView(pacoteDeViagem: pacote)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                        ) {
                        PacotesViagensView(pacoteDeViagem: pacote)
                        }
                    }
                }
            }
        }
        .frame(height: 300)
        .background(Color(red: 247.0/255.0, green: 247.0/255.0, blue: 247.0/255.0))
    }
}

struct SecaoPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        SecaoPacotesView(nomeDaSecao: pacoteDeViagens[0].categoria.rawValue, pacotes: pacoteDeViagens)
            .previewLayout(.fixed(width: 600, height: 300))
    }
}
