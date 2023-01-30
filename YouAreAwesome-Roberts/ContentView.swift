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
    let message1 = "You Are Awesome!"
    let message2 = "You Are Great!"
    
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
                
                messageString = (messageString == message1 ? message2 : message1)
                
                imageName = "image\(imageNumber)"
                imageNumber += 1
                if(imageNumber>9){
                    imageNumber = 0
                }
                print(imageNumber)
                
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
