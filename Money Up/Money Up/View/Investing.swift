//
//  Investing.swift
//  Money Up
//
//  Created by Nathan Graff on 12/10/23.
//

import SwiftUI

struct Investing: View {
    var body: some View {
            ZStack {
                Color(red: 105/255, green: 212/255, blue: 138/255)
                    .ignoresSafeArea()

                VStack(spacing: 0) {
                    HStack {
                        Spacer()
                        Text("Investing")
                            .font(.system(size: 30))
                            .bold()
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    .padding(.bottom, 8) // Adjust the padding as needed
                    .background(Color(red: 75/255, green: 160/255, blue: 108/255))
                    Spacer() // Move the content to the top
                    VStack {
                        Spacer()
                        Text("Coming Soon")
                            .font(.system(size: 40))
                            .bold()
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity) // Use maxWidth to extend to the full width
            }
        }
    }



struct Investing_Previews: PreviewProvider {
    static var previews: some View {
        Investing()
    }
}
