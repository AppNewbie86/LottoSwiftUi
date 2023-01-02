//
//  LottoZahlenViewModel.swift
//  LottoSwiftUi
//
//  Created by Marcel Zimmermann on 02.01.23.
//

import Foundation

@MainActor class LottoZahlenViewModel:ObservableObject{
    var lottoZahlenBereich = Array(1...49)
    @Published private(set)var lottoZahlen = [Int]()
    
    // Funktion zum LottoZahlen Generieren
    func lottoZahlenGenerieren() ->(){
        var neueZahlen = [Int]()                            // kommen alle als GanzZahlen im Format Integer an
        while (neueZahlen.count < 6){ // ziehe 6 Zahlen
            let zahl = lottoZahlenBereich.randomElement()!  // neue Konstante Zahl im LottoZahlenBereich 1 - 49                                                                                     ein zufällige gewählte Zahl erscheint
            if(!neueZahlen.contains(zahl)){                 // neue Zahlen werden in der Konstante Zahl abgespeichert
                neueZahlen.append(zahl)
            }
        }
        neueZahlen.sort()                                   // Zahlen werden sortiert
        lottoZahlen = neueZahlen                            // speicherung der neuen Zahl
    }
    
    func lottoZahlenGenerien()->(){                         // Funktion des LottoZahlenGenerierens
        lottoZahlenBereich.shuffle()                        // LottoZahlenBereich wird sortiert der Grße nach
        lottoZahlen = lottoZahlenBereich.dropLast(43)       // entferne einfach ab zahl 43 alle anderen Zahlen
        lottoZahlen.sort()                                  // Zahlen werden neu sortiert
        lottoZahlenBereich = Array(1...49)                  // Feste Zuordnung das LottoZahlenBereich dem Array entspricht
        
    }
    
}

