//
//  ContentView.swift
//  CW6
//
//  Created by Sedra Asrawi on 16/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var hight = ""
    @State var weight = ""
    @State var result = 0.0
    @State var condition = ""
    var body: some View {
        ZStack{
            Color.red.opacity(0.3)
                .ignoresSafeArea()
               
            VStack{
                
                Text("BMI Calculator")
                    .font(.custom(FontsManager.MouseMemoirs.regular, size: 50))
                    .foregroundColor(.red)
                    .padding()
                
                Image("photo1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                
               
                HStack{
                Text("Enter your informations :")
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .padding()
                    Spacer()
                }
                
                
                TextField("your hight * meter *", text: $hight)
                    .foregroundColor(.blue)
                    .padding(7)
                    .background(.white).cornerRadius(50)
                    .padding(7)
                
                TextField("your weight * Kg *", text: $weight)
                    .foregroundColor(.blue)
                    .padding(7)
                    .background(.white).cornerRadius(50)
                    .padding(7)
                    
                Button {
                    
                 result = BMI(weight: Double (weight) ?? 0.0, hight: Double (hight) ?? 0.0)
                    
                  if result <= 20
                    {  condition = "slim" }
                    
                    else if result <= 25 && result >= 20
                    {condition = "good"}
                    
                    else {
                        condition = "fat"
                    }
                        
                    
                    
                    
                } label: {
                    Text("start")
                        .padding()
                        .background(.red)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                        .font(.headline)
                }

                HStack {
                    Text("BMI = \(result)")
                        .fontWeight(.bold)
                        .padding()
                        Spacer()
                }
                
                
                HStack {
                    Text("condition : \(condition)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    Spacer()
                }
                
                
                
               Spacer()
            } .frame(width: 390, height: 700)
            
            
            
            
            
            
        }
        
    }
}

func BMI (weight : Double, hight : Double) -> Double {
    
    return  weight / ( hight*hight )
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
