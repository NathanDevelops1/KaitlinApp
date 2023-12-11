//
//  SplashScreenView.swift
//  MoneyGain
//
//  Created by Nathan Graff on 12/4/23.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        if isActive {
            LoginPage()
        } else {
            VStack {
                VStack {
                    Image(colorScheme == .dark ? "7" : "justlogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.green) // You can set the color here if needed
                    Text("Money Up")
                        .font(.system(size: 30)) // Adjust the size to your preference
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}


#Preview {
    SplashScreenView()
}
