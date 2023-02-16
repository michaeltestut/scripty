//
//  ContentView.swift
//  Scripty
//
//  Created by Michael Testut on 2/1/23.
//

import SwiftUI

struct ContentView: View {
    init() {
        UICollectionView.appearance().backgroundColor = .clear
    }
    @FetchRequest(sortDescriptors: []) var scenes: FetchedResults<ActingScene>
    
    var body: some View {
        ZStack{
            NavigationView{
                Image("BG")
                .toolbar{
                    ToolbarItem(placement: .principal){
                        Text("Scripty")
                        .foregroundColor(.white)
                        .font(Font.custom("Monoton-Regular", size: 60))
                        .padding(.top,60)
                        .shadow(radius: 2,x:5,y:5)
                        
                    }
                    
                }
            }
            
                
                VStack{
                    List(scenes) { oneScene in
                        Text(oneScene.name ?? "Unknown")}
                    .padding(.top,125)
                    .padding(.bottom,25)
                    
                    Button(action: {
                        print("button pressed")
                    }) {
                        VStack {
                            Image(systemName:"plus.square.dashed")
                                .resizable()
                                .frame(width: 80.0, height: 80.0)
                                .foregroundColor(.white)
                                .shadow(radius: 2,x:5,y:5)
                                
                            Text("Add New Scene")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .shadow(radius: 2,x:5,y:5)
                            
                        }
                    }
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

