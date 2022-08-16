//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        ZStack{
            RadialGradient(
                gradient: Gradient(colors: [Color("Color1"), Color("Color2")]),
                center: .topLeading,
                startRadius: 1,
                endRadius: 960)
            .ignoresSafeArea()
        VStack{
            Text("أذكاري :-")
                .font(.custom(FontsManager.Lalezar.regular, size: 50))
                .padding()
            RowView(MyCounter: $counter[0], title: "استغفر الله العظيم")
            RowView(MyCounter: $counter[1], title: "سبحان الله وبحمده")
            RowView(MyCounter: $counter[2], title: "سبحان الله العظيم")

        }
    }
}
}

// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RowView: View {
    @Binding var MyCounter: Int
    @State var title = ""
    var body: some View {
      
            
        HStack{
            Text("\(title)")
                .padding()
                .font(.custom(FontsManager.Lalezar.regular, size: 30))
            Spacer()
            Text("\(MyCounter)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.blue.opacity(0.5))
                .background(Color.white)
                .clipShape(Circle())
//                .padding()
                .onTapGesture {
                    MyCounter = MyCounter + 1
                }
        }.padding()
    }
    }

