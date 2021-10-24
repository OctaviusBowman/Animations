//
//  ContentView.swift
//  Animations
//
//  Created by Octavius Bowman on 10/24/21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me!") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.animationAmount += 360
            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis:(x: 0, y:1, z: 0))
    }
    
    
    
    
    
    
    
    
    
    
    
    /* Animating Bindings
     @State private var animationAmount: CGFloat = 1
     
     var body : some View {
     print(animationAmount)
     
     return VStack{
     Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
     
     Spacer()
     
     Button("Tap Me") {
     self.animationAmount += 1
     }
     .padding(40)
     .background(Color.red)
     .foregroundColor(.white)
     .clipShape(Circle())
     .scaleEffect(animationAmount)
     }
     }
     */
    
    
    
    
    
    
    
    
    
    
    
    
    /* Pulsing animation
     @State private var animationAmount: CGFloat = 1
     
     
     var body: some View {
     Button("Tap Me!") {
     self.animationAmount += 1
     }
     .padding(50)
     .background(Color.red)
     .foregroundColor(.white)
     .clipShape(Circle())
     .overlay(
     Circle()
     .stroke(Color.red)
     .scaleEffect(animationAmount)
     .opacity(Double(2-animationAmount))
     .animation(Animation.easeInOut(duration: 1)
     .repeatForever(autoreverses: false))
     )
     .onAppear {
     self.animationAmount = 2
     }
     }
     */
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
