//
//  ContentView.swift
//  bullseye
//
//  Created by Alex El-Shbeir on 03.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            VStack {
                Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO").bold().kerning(2.0).multilineTextAlignment(.center).lineSpacing(4.0).font(.footnote)
                Text(String(game.target)).kerning(-1.0).font(.largeTitle).fontWeight(.black).multilineTextAlignment(.center)
            }
            HStack {
                Text("1").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            Button(action: {
                print("Hello, SwiftUI!")
                self.alertIsVisible = true
            }) {
                Text("HIT ME")
            }
            .alert(isPresented: $alertIsVisible, content: {
                let roundedValue = Int(self.sliderValue.rounded())
                return Alert(title: Text("Hullo there mate"), message: Text("The sliders value is \(roundedValue)\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points"), dismissButton: .default(Text("Awesome!")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
