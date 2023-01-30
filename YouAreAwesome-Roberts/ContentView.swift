//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Will Roberts on 1/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
    
    
    
    var body: some View {
        
        
        
        
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 10)
                .padding()
            
            Spacer()
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "Fabulous? Thats You!",
                                "You Are Fantastic!",
                                "You Make Me smile!",
                                "When the Genius Bar Needs Help THey Call You"]
                
                messageString = messages[messageNumber]
                messageNumber = messageNumber + 1
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                
                
                imageName = "image\(imageNumber)"
                imageNumber = imageNumber + 1
                if imageNumber > 9 {
                    imageNumber = 0
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
