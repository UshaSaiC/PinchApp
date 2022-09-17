//
//  ContentView.swift
//  PinchApp
//
//  Created by Usha Sai Chintha on 18/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAnimating: Bool = false
    @State private var imageScale:CGFloat = 1
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 0 : 1)
                    .scaleEffect(imageScale)
                    .onTapGesture(count: 2) { // here we are tapping 2 times.. indirectly it is double tap gesture
                        if imageScale == 1 {
                            withAnimation(.spring()){
                                imageScale = 5 // this condition is triggered when image is at its original size and we want to zoom in
                            }
                        } else{
                            withAnimation(.spring()){
                                imageScale = 1 // this condition is triggered when image is already scaled and we now want it to be in its original state
                            }
                        }
                    }
                
            }
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            onAppear {
                withAnimation(.linear(duration: 1)){
                    isAnimating = true
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
