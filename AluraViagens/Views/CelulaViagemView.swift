//
//  CelulaViagemView.swift
//  AluraViagens
//
//  Created by Jose Luis Damaren Junior on 27/04/23.
//

import SwiftUI

struct CelulaViagemView: View {
    
    var viagem: Viagem
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir", size: horizontalSizeClass == .compact ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: horizontalSizeClass == .compact ? 125 : 230)
                .clipped()
            HStack(content: {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: horizontalSizeClass == .compact ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: horizontalSizeClass == .compact ? 14 : 24))
            })
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        CelulaViagemView(viagem: viagens[0])
            .previewLayout(.fixed(width: 350, height: 200))
    }
}
