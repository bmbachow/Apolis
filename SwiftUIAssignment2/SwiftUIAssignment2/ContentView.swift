//
//  ContentView.swift
//  SwiftUIAssignment2
//
//  Created by Brian Bachow on 3/7/22.
//

import SwiftUI

struct ImageOverlay: View {
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("Profile").foregroundColor(.red).bold().padding()
                    Spacer()
                    Text("Home").foregroundColor(.red).bold().padding()
                }
                Spacer()
                Text("Welcome to SwiftUI Design By Brian").foregroundColor(.red).bold().padding()
            }
            
        }
    }
}


struct ContentView: View {
    var body: some View {
        VStack{
            Image("carImage")
                .resizable()
                .scaledToFill()
                .overlay(ImageOverlay())
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
