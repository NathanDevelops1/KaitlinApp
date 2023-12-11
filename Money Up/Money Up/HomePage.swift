//
//  ContentView.swift
//  KaitlinApp
//
//  Created by Nathan Graff on 11/30/23.
//

import SwiftUI
import UIKit



struct HomePage: View {
    @State private var tabSelected: Tab = .house
    
    var body: some View {
                ZStack {
                    Color(red: 105/255, green: 212/255, blue: 138/255)
                    VStack {
                        TabView(selection: $tabSelected) {
                            ForEach(Tab.allCases, id: \.rawValue) { tab in
                                viewForTab(tab)
                                    .tag(tab)
                            }
                        }
                    }
                    
                    VStack {
                        Spacer()
                        CustomTabBar(selectedTab: $tabSelected)
                    }
                }
//                .frame(maxWidth: .infinity, alignment: .bottom)
//                .foregroundColor(.white) // Adjust the text color to be visible against the gradient
        }

    func viewForTab(_ tab: Tab) -> some View {
        switch tab {
        case .magnifyingglass_circle:
            return AnyView(Expensify())
        case .dollarsign_circle:
            return AnyView(Spending())
        case .house:
            // Your home page content here
            return AnyView(Home())
        case .chart_pie:
            return AnyView(Savings(data: [30, 50, 20], colors: [.blue, .green, .orange]))
        case .chart_line_uptrend_xyaxis_circle:
            return AnyView(Investing())
        }
    }
}

struct HomePageContent: View {
    var body: some View {
        Text("Home Page Content")
            .font(.title)
            .foregroundColor(.black)
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .previewInterfaceOrientation(.portrait)
    }
}
