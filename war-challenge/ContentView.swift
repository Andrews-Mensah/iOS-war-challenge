//
//  ContentView.swift
//  war-challenge
//
//  Created by Andrews Mensah on 08/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    //@State means the property is a state property and this allows you to update the property
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                    .padding(.bottom)
                
//                Spacer()
                HStack(spacing: 50){
//                    Spacer()
                    Image(playerCard)
//                    Spacer()
                    Image(cpuCard)
//                    Spacer()
                    
                }
                Spacer()
                
                
                
                Button(action: {
                    
                    //Generate random number between 2 and 14
                    let cpuRand = Int.random(in: 2...14)
                    let playerRand = Int.random(in: 2...14)
                    
                    //update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    
                    //update the score
                    
                    if (playerRand > cpuRand){
                        playerScore += 1
                    }
                    
                    else if (cpuRand > playerRand){
                        cpuScore += 1
                    }
//                    playerScore += 1
//                    cpuScore += 1
                    
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                
                if(playerScore == 10){
                    
                    Text("Game Over, Player 1 Wins")
                    
                } else if (cpuScore == 10){
                    Text("Game Over, CPU Wins")
                }
                
//                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
