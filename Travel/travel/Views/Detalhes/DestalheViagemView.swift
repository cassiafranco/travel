//
//  DestalheViagemView.swift
//  travel
//
//  Created by cassia franco on 06/08/21.
//

import SwiftUI

struct DestalheViagemView: View {
    
    //MARK: - Atributos
    
    var pacoteDeViagem: PacoteDeViagem
    var corDaFonte = Color(red: 77.0/255.0, green: 77.0/255.0, blue: 77.0/255.0)

    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        GeometryReader { view in
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    ZStack(alignment: .top){
                        Image(self.pacoteDeViagem.imagens[0])
                            .resizable()
                            .frame(height: 200)
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("icone-voltar")
                                .resizable()
                                .renderingMode(Image.TemplateRenderingMode.original)
                                .frame(width: 15, height: 25, alignment:
                                        .leading)
                                .padding(.leading, 15)
                                .padding(.top, 30)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                    }
                }
                VStack{
                    VStack{
                        Group{
                            Text(self.pacoteDeViagem.titulo.uppercased())
                                .font(.custom("Avenir Black", size: 26))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                            
                            Text(self.pacoteDeViagem.descricao)
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .leading)
                            Spacer()
                                .frame(height: 15)
                            
                            Text(self.pacoteDeViagem.detalhes)
                                .font(.custom("Avenir Black", size: 14))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .leading)
                            Spacer()
                                .frame(height: 15)
                        }
                        HStack{
                            Group{
                                VStack{
                                    Text("Válido para o período de:")
                                        .font(.custom("Avenir", size: 14))
                                        .foregroundColor(self.corDaFonte)
                                        .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .leading)
                                    Text("\(self.pacoteDeViagem.dataValidade)")
                                        .font(.custom("Avenir", size: 14))
                                        .foregroundColor(self.corDaFonte)
                                        .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .leading)
                                }
                                VStack{
                                    Text("R$ \(self.pacoteDeViagem.valor)")
                                        .font(.custom("Avenir Black", size: 25))
                                        .foregroundColor(.orange)
                                        .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .trailing)
                                    
                                    Text("sem taxas em até 12x")
                                        .font(.custom("Avenir", size: 14))
                                        .foregroundColor(self.corDaFonte)
                                        .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .trailing)
                                }
                            }
                        }
                        Divider()
                        VStack{
                            Text("O que está incluso")
                                .font(.custom("Avenir", size: 20))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .leading)
                        }
                        HStack{
                            VStack{
                                Image("icone-apartamento")
                                Text("Apartamento")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .center)
                            }
                            Spacer()
                                .frame(height: 20)
                            
                            VStack{
                                Image("icone-aviao")
                                Text("Passagem Aérea")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .center)
                            }
                        }
                        .padding(.leading , 40)
                        .padding(.trailing, 40)
                        
                        Divider()
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("Escolher opção")
                                .font(.custom("Avenir Black", size: 16))
                                .foregroundColor(Color.white)
                        }
                        .frame(width: view.size.width-30, height: 40, alignment: .center)
                        .background(Color(red: 221.0/255.0, green: 58.0/255.0, blue: 126.0/255.0))
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    
                }
                
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct DestalheViagemView_Previews: PreviewProvider {
    static var previews: some View {
        DestalheViagemView(pacoteDeViagem: pacoteDeViagens[0])
    }
}
