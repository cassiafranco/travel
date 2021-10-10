//
//  ListDePacotesView.swift
//  travel
//
//  Created by cassia franco on 23/07/21.
//

import SwiftUI

struct ListDePacotesView: View {
    
    var categorias: [String: [PacoteDeViagem]] {
        Dictionary(grouping: pacoteDeViagens, by: { $0.categoria.rawValue })
    }
    var colorBack = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
    
    var body: some View {
        NavigationView{
            List {
                ForEach(categorias.keys.sorted(), id: \.self) {
                    chave in
                    SecaoPacotesView(nomeDaSecao: chave, pacotes: self.categorias[chave]!)
                }
                
            }
            .navigationBarTitle("Pacotes")
            .padding(.leading, -10)
            .padding(.trailing, -10)
            
        }
        .onAppear(){
            UITableView.appearance().separatorStyle = .none
            UITableView.appearance().backgroundColor = self.colorBack
            UITableViewCell.appearance().backgroundColor = self.colorBack
            UINavigationBar.appearance().backgroundColor = self.colorBack
        }
        .onDisappear(){
            UITableView.appearance().separatorStyle = .singleLine
            UITableView.appearance().backgroundColor = nil
            UITableViewCell.appearance().backgroundColor = nil
            UITableViewCell.appearance().backgroundColor = nil
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ListDePacotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListDePacotesView()
    }
}
