//
//  ContentView.swift
//  Landmarks
//
//  Created by Eugene Lo on 2/18/20.
//  Copyright © 2020 Eugene Lo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack {
                VStack(alignment: .leading) {
                    Text("Turtle Rock")
                        .font(.title)
                    
                    HStack {
                        Text("Joshua Tree National Park")
                            .font(.subheadline)
                        
                        Spacer()
                        
                        Text("California")
                            .font(.subheadline)
                    }
                }
            }.padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
