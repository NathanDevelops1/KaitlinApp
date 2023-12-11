//
//  ContentView.swift
//  KaitlinApp
//
//  Created by Nathan Graff on 11/30/23.
//

import SwiftUI
import UIKit

struct LoginPage: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var isLoggedIn = false
        
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                if isLoggedIn {
                    HomePage()
                } else {
                    ZStack {
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color(red: 105/255, green: 212/255, blue: 138/255),
                                Color(red: 79/255, green: 175/255, blue: 123/255),
                                Color(red: 32/255, green: 119/255, blue: 85/255),
                                Color(red: 9/255, green: 82/255, blue: 54/255)
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        .edgesIgnoringSafeArea(.all)
                        VStack {
                            Rectangle()
                                .frame(height: geometry.size.height * 0.1) // above logo
                                .foregroundColor(.clear)
                            Image("final")
                                .resizable()
                                .frame(width: 364, height: 201)
                            Rectangle() // below the logo above Log In
                                .frame(height: geometry.size.height * 0.03)
                                .foregroundColor(.clear)
                            Group {
                                HStack {
                                    Text("Login")
                                        .font(.system(size: 25))
                                        .padding(.leading, geometry.size.width * 0.06)
                                        .padding(.bottom, 0)
                                        .foregroundColor(Color.white)
                                    Spacer()
                                }
                                TextField("Username", text: $username)
                                    .padding()
                                    .frame(width: 345, height: 35)
                                    .background(Color(red: 132/255, green: 211/255, blue: 180/255))
                                    .cornerRadius(4)
                                    .border(.red, width: CGFloat(wrongUsername))
                                SecureField("Password", text: $password)
                                    .padding()
                                    .frame(width: 345, height: 35)
                                    .background(Color(red: 132/255, green: 211/255, blue: 180/255))
                                    .cornerRadius(4)
                                    .border(.red, width: CGFloat(wrongPassword))
                            }
                            Group {
                                Text("")
                                    .padding(.bottom, 8)
                                if isLoggedIn {
                                                LoggedInView()
                                            } else {
                                                Button("LOGIN WITH YOUR BANK") {
                                                    authenticateUser(username: username, password: password, isLoggedIn: $isLoggedIn)
                                                }
                                                .bold()
                                                .foregroundColor(Color(red: 90/255, green: 84/255, blue: 84/255))
                                                .frame(width: 345, height: 35)
                                                .background(
                                                    LinearGradient(
                                                        gradient: Gradient(colors: [
                                                            Color(red: 92/255, green: 191/255, blue: 121/255),
                                                            Color(red: 50/255, green: 182/255, blue: 88/255),
                                                        ]),
                                                        startPoint: .leading,
                                                        endPoint: .trailing
                                                    )
                                                    
                                                )
                                                .cornerRadius(4)
                                            }
                                
                                Button("Reset Password") {
                                    
                                }
                                .foregroundColor(Color(red: 175/255, green: 198/255, blue: 170/255))
                            }
                            Rectangle()
                                .foregroundColor(.clear)
                            Group {
                                Rectangle() // above the or below password reset
                                    .frame(height: geometry.size.height * 0.17)
                                    .foregroundColor(.clear)
                                HStack {
                                    Rectangle()
                                        .frame(width: 142, height: 1.5)
                                        .foregroundColor(Color(red: 162/255, green: 170/255, blue: 160/255))
                                    
                                    Text("OR")
                                        .padding(.horizontal, 10)
                                        .foregroundColor(Color(red: 162/255, green: 170/255, blue: 160/255))
                                        .fontWeight(.semibold)
                                    
                                    Rectangle()
                                        .frame(width: 142, height: 1.5)
                                        .foregroundColor(Color(red: 162/255, green: 170/255, blue: 160/255))
                                }
                                Rectangle() // between the or and the create account button
                                    .frame(height: geometry.size.height * 0.05)
                                    .foregroundColor(.clear)
                                Button("CREATE NEW ACCOUNT") {
                                    
                                }
                                .foregroundColor(Color.white)
                                .bold()
                                .frame(width: 345, height: 35)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [
                                            Color(red: 54/255, green: 218/255, blue: 101/255),
                                            Color(red: 62/255, green: 201/255, blue: 110/255),
                                            Color(red: 46/255, green: 192/255, blue: 113/255)
                                        ]),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .cornerRadius(4)
                                Rectangle() // under the create account button
                                    .frame(height: geometry.size.height * 0.07)
                                    .foregroundColor(.clear)
                            }
                            
                        }
                }
                    .onAppear()
                }
            }
        }
    }
    func authenticateUser(username: String, password: String, isLoggedIn: Binding<Bool>) {
        print("Authenticating user...")

        if username.lowercased() == "kaitlin" && password.lowercased() == "123" {
            isLoggedIn.wrappedValue = true
            print("Setting isLoggedIn to true")
        } else {
            print("Authentication failed")
        }
    }
}

struct LoggedInView: View {
    var body: some View {
        VStack {
            Text("You are logged in")
                .font(.title)
                .padding()
        }
        .navigationTitle("Logged In")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
