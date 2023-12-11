//
//  Home.swift
//  MoneyGain
//
//  Created by Nathan Graff on 12/4/23.
//

import SwiftUI
import UIKit

struct Home: View {
    
    @State private var progressValue: Float = 0.5
    
    var body: some View {
        GeometryReader { geometry in
                ZStack {
                    Color(red: 105/255, green: 212/255, blue: 138/255)
                        .ignoresSafeArea()
                    VStack{
                        HStack {
                            Spacer()
                            Text("Home")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(Color.white)
                            Spacer()
                        }
                        .padding(.bottom, 12)
                        .background(Color(red: 75/255, green: 160/255, blue: 108/255))
                        Group {
                            HStack {
                                Image(systemName: "person.crop.circle")
                                    .padding(.leading, 20)
                                    .font(.system(size: 50))
                                Text("Kaitlin")
                                    .font(.system(size: 25))
                                    .fontWeight(.medium)
                                Spacer()
                            }
                        }
                        VStack (spacing: 0){
                            Text("Overview")
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .frame(width: 325, height: 20)
                                .padding()
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [
                                            Color(red: 62/255, green: 201/255, blue: 110/255),
                                            Color(red: 54/255, green: 218/255, blue: 101/255),
                                            Color(red: 46/255, green: 192/255, blue: 113/255)
                                    ]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                    )
                                )
                                .cornerRadius(5, corners: [.topLeft, .topRight])
                            Group {
                                VStack {
                                    HStack {
                                        Text("Total Savings")
                                        Spacer()
                                        Text("$1,025.28")
                                    }
                                    .padding()
                                    .foregroundColor(.black)
                                    .font(Font.custom("Inter", size: 20))
                                    
                                    Rectangle() // Black separator line
                                        .fill(Color.gray)
                                        .frame(height: 2)
                                        .padding(.horizontal, 20)
                                    
                                    HStack {
                                        Text("Total Spendings")
                                        Spacer()
                                        Text("$1,025.28")
                                    }
                                    .padding()
                                    .foregroundColor(.black)
                                    .font(Font.custom("Inter", size: 20))
                                }
                                .background(Color(.white))
                                .frame(width: 357)
                            .cornerRadius(5, corners: [.bottomLeft, .bottomRight])
                            }
                            
                        }
                        
                        HStack {
                            VStack {
                                Button(action: {
                                            // Your button action code here
                                        }) {
                                            VStack {
                                                Image(systemName: "magnifyingglass")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 40, height: 40)
                                                    .foregroundColor(.white) // Set the image color to white
                                                    .font(Font.system(size: 40).weight(.medium))
                                            }
                                            .padding()
                                            .background(Color(red: 69/255, green: 166/255, blue: 111/255)) // Set the background color
                                            .foregroundColor(.white)
                                            .cornerRadius(40)
                                    }
                                Text("Explore")
                                    .fontWeight(.bold)
                            }
                            Spacer()
                            VStack {
                                Button(action: {
                                            // Your button action code here
                                        }) {
                                            VStack {
                                                Image(systemName: "questionmark")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 40, height: 40)
                                                    .foregroundColor(.white) // Set the image color to white
                                                    .font(Font.system(size: 40).weight(.medium))
                                            }
                                            .padding()
                                            .background(Color(red: 69/255, green: 166/255, blue: 111/255)) // Set the background color
                                            .foregroundColor(.white)
                                            .cornerRadius(40)
                                    }
                                Text("Support")
                                    .fontWeight(.bold)
                            }
                            Spacer()
                            VStack {
                                Button(action: {
                                            // Your button action code here
                                        }) {
                                            VStack {
                                                Image(systemName: "ellipsis")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 40, height: 40)
                                                    .foregroundColor(.white) // Set the image color to white
                                                    .font(Font.system(size: 40).weight(.medium))
                                            }
                                            .padding()
                                            .background(Color(red: 69/255, green: 166/255, blue: 111/255)) // Set the background color
                                            .foregroundColor(.white)
                                            .cornerRadius(40)
                                    }
                                Text("More")
                                    .fontWeight(.bold)
                            }
                        }
                        .padding(.top, 20)
                        .padding(.leading, 35)
                        .padding(.trailing, 35)
                        
                        Spacer()
                        
                        VStack (spacing: 0){
                            Text("Progression towards goals")
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .frame(width: 325, height: 20)
                                .padding()
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [
                                            Color(red: 62/255, green: 201/255, blue: 110/255),
                                            Color(red: 54/255, green: 218/255, blue: 101/255),
                                            Color(red: 46/255, green: 192/255, blue: 113/255)
                                        ]),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .cornerRadius(5, corners: [.topLeft, .topRight])
                            
                            Group {
                                VStack {
//                                    ProgressView(value: 50, total: 100)
//                                        .padding()
//                                        .accentColor(Color.blue)
//                                        .scaleEffect(x: 1, y: 4, anchor: .center)
//                                        .clipShape(RoundedRectangle(cornerRadius: 1000))
                                    
                                    VStack {
                                        HStack {
                                            Text("Car Savings")
                                                .foregroundStyle(Color.black)
                                                .padding(.leading)
                                                .padding(.top)
                                            Spacer()
                                            Text("50%")
                                                .foregroundStyle(Color.black)
                                                .padding(.trailing)
                                                .padding(.top)
                                        }
                                        Rectangle()
                                            .foregroundColor(Color(red: 0.75, green: 0.75, blue: 0.75))
                                            .frame(height: 16)
                                            .overlay(
                                               GeometryReader { metrics in
                                                   Rectangle()
                                                       .foregroundColor(.blue)
                                                       .frame(
                                                          width: min(50/100, 1) * metrics.size.width,
                                                          height: 16
                                                       )
                                                       .background(Color(Color.white))
                                                       .clipShape(RoundedRectangle(cornerRadius: 20))
                                               }
                                           )
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .padding(.leading)
                                        .padding(.trailing)
                                        .padding(.bottom, 1)
                                    }
                                    VStack {
                                        HStack {
                                            Text("College Savings")
                                                .foregroundStyle(Color.black)
                                                .padding(.leading)
                                                .padding(.top)
                                            Spacer()
                                            Text("75%")
                                                .foregroundStyle(Color.black)
                                                .padding(.trailing)
                                                .padding(.top)
                                        }
                                        Rectangle()
                                            .foregroundColor(Color(red: 0.75, green: 0.75, blue: 0.75))
                                            .frame(height: 16)
                                            .overlay(
                                               GeometryReader { metrics in
                                                   Rectangle()
                                                       .foregroundColor(.blue)
                                                       .frame(
                                                          width: min(75/100, 1) * metrics.size.width,
                                                          height: 16
                                                       )
                                                       .background(Color(Color.white))
                                                       .clipShape(RoundedRectangle(cornerRadius: 20))
                                               }
                                           )
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .padding(.leading)
                                        .padding(.trailing)
                                        .padding(.bottom, 25)
                                    }
                                    
                                }
                                .background(Color(.white))
                                .frame(width: 357)
                                .cornerRadius(5, corners: [.bottomLeft, .bottomRight])
                            }
                        }
                        
//                        .padding(.top, 35)
                        Spacer()
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }

struct LinearProgressViewStyle: ProgressViewStyle {
    var thickness: CGFloat = 10

    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .frame(height: thickness)
            .accentColor(Color.green) // Customize the progress bar color
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let bounds = CGRect(x: 0, y: 0, width: rect.width, height: rect.height)

        if corners.contains(.topLeft) {
            path.move(to: CGPoint(x: bounds.minX, y: bounds.minY + radius))
            path.addArc(center: CGPoint(x: bounds.minX + radius, y: bounds.minY + radius), radius: radius, startAngle: .degrees(180), endAngle: .degrees(270), clockwise: false)
        } else {
            path.move(to: bounds.origin)
        }

        if corners.contains(.topRight) {
            path.addLine(to: CGPoint(x: bounds.maxX - radius, y: bounds.minY))
            path.addArc(center: CGPoint(x: bounds.maxX - radius, y: bounds.minY + radius), radius: radius, startAngle: .degrees(270), endAngle: .degrees(0), clockwise: false)
        } else {
            path.addLine(to: CGPoint(x: bounds.maxX, y: bounds.minY))
        }

        if corners.contains(.bottomRight) {
            path.addLine(to: CGPoint(x: bounds.maxX, y: bounds.maxY - radius))
            path.addArc(center: CGPoint(x: bounds.maxX - radius, y: bounds.maxY - radius), radius: radius, startAngle: .degrees(0), endAngle: .degrees(90), clockwise: false)
        } else {
            path.addLine(to: CGPoint(x: bounds.maxX, y: bounds.maxY))
        }

        if corners.contains(.bottomLeft) {
            path.addLine(to: CGPoint(x: bounds.minX + radius, y: bounds.maxY))
            path.addArc(center: CGPoint(x: bounds.minX + radius, y: bounds.maxY - radius), radius: radius, startAngle: .degrees(90), endAngle: .degrees(180), clockwise: false)
        } else {
            path.addLine(to: CGPoint(x: bounds.minX, y: bounds.maxY))
        }

        path.closeSubpath()

        return path
    }
}

struct Home_Preview: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
