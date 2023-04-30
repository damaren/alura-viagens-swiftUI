//
//  ContentView.swift
//  AluraViagens
//
//  Created by Jose Luis Damaren Junior on 27/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        NavigationView {
            GeometryReader { view in
                
                // MARK: - VStack container
                
                VStack(spacing: 0, content: {
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 230 : 365, alignment: .top)
                    List(viagens) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationTitle("Localização")) {
                            CelulaViagemView(viagem: viagem)
                        }
                    }.navigationTitle("")
                })
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
