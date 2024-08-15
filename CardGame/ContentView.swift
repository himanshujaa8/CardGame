//
//  ContentView.swift
//  first
//
//  Created by SANJEEV CHOUDHARY on 06/08/24.
//

import SwiftUI
import CoreData


struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuSore = 0
    
    var body : some View{
        
        
        ZStack{
            Spacer()
            Image("background-wood-grain  ")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button{
                    deal();
                } label: {
                    Image("button")
                }
                
                Spacer()
                
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .padding(.bottom ,10)
                    }
                    Spacer()
                    VStack{
                        Text("Computer")
                            .font(.headline)
                        Text(String(cpuSore))
                            .font(.largeTitle)
                            .padding(.bottom,10 )
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
            Spacer()
        }
     }
    
    func deal() {
        
        let playerCardValue = Int.random(in: 2...14)
        let cpuCardValue  = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue)
        cpuCard  = "card" + String(cpuCardValue)
        
        if playerCardValue > cpuCardValue {
            
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            
            cpuSore += 1
        }
       
        
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
