//
//  ContentView.swift
//  LottoSwiftUi
//
//  Created by Marcel Zimmermann on 02.01.23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var lottoViewModel = LottoZahlenViewModel()
    var body: some View {
        
        
        // Vertikaler Stapel
        VStack{
            // Hochizontaler Stabel 
            HStack{
                ForEach(lottoViewModel.lottoZahlen, id: \.self){
                    zahl in
                    lottoZahlenView(number: zahl, bgColor: Color.red)
                }
            }
            
            // Ein Button mit einer Action vom Namen getNumbers
            // und einem Anzeigetext lasst uns Beginnen 
            
            Button(action : getNumbers){
                Text("Lasst uns beginnen")
            }
        }
    }
    // Funktion zum setzen der Nummern
    func getNumbers(){
        lottoViewModel.lottoZahlenGenerien() // hier sagen wir dem ViewModel das es Zahlen Generieren soll                                       mit Punktnotation
    }
    
    
    // Preview ist dafür da uns eine Vorschau zeigen zu können
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
