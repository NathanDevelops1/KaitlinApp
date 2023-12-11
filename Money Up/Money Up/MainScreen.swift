//
//  MainScreen.swift
//  Money Up
//
//  Created by Nathan Graff on 12/10/23.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
            VStack(spacing: 0) {
                HStack {
                    Spacer()
                    Text("Home")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(Color.white)
                    Spacer()
                }
                .padding(.bottom, 8)
                .background(Color(red: 75/255, green: 160/255, blue: 108/255))
                Spacer()
            }
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    MainScreen()
}
