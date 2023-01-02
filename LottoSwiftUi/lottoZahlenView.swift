//
//  lottoZahlenView.swift
//  LottoSwiftUi
//
//  Created by Marcel Zimmermann on 02.01.23.
//

import SwiftUI

struct lottoZahlenView: View {
    
    
    
    // deklaration von 2 Variablen
    
    var number : Int
    var bgColor : Color
    
    var body: some View {
        // Höhenverstellbarer Satbel um Übergänge besser darstellen zu können
        ZStack{
            // Hintergrund dann Text mit den Nummern als Kommentar zum besseren verständnis
            bgColor
            Text("\(number)")
                .foregroundColor(bgColor == Color.yellow ? Color.blue : Color.white)
        }
        // hier werden die Objekte fest einer Form zugeordnet 50 x 50 mit eckkenradius 25
        // (KreisObjekt)
        .frame(width: 50,height:50) // Länge u. Breite
        .cornerRadius(25) // Eckenradius
    }
}

struct lottoZahlenView_Previews: PreviewProvider {
    static var previews: some View {
        lottoZahlenView(number: 22, bgColor: Color.yellow)
    }
}
