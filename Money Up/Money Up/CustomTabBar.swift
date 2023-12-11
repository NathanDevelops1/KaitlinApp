//
//  CustomTabBar.swift
//  TestProject0105
//
//  Created by Federico on 01/05/2022.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case magnifyingglass_circle
    case dollarsign_circle
    case house
    case chart_pie
    case chart_line_uptrend_xyaxis_circle
}


struct CustomTabBar: View {
        
    @Binding var selectedTab: Tab
    
    private var fillImage: String {
        selectedTab == .none ? "" : (selectedTab.rawValue.replacingOccurrences(of: "_", with: "."))
    }
    private var tabColor: Color {
        switch selectedTab {
        case .magnifyingglass_circle:
            return .green
        case .dollarsign_circle:
            return .green
        case .house:
            return .green
        case .chart_pie:
            return .green
        case .chart_line_uptrend_xyaxis_circle:
            return .green
        }
    }
    
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                HStack {
                    ForEach(Tab.allCases, id: \.rawValue) { tab in
                        Spacer()
                        Image(systemName: selectedTab == tab ? fillImage : tab.rawValue.replacingOccurrences(of: "_", with: "."))
                            .scaleEffect(tab == selectedTab ? 1.25 : 1.0)
                            .foregroundColor(tab == selectedTab ? tabColor : .white)
                            .font(.system(size: 25))
                            .onTapGesture {
                                withAnimation(.easeInOut(duration: 0.1)) {
                                    selectedTab = tab
                                }
                            }
                            
                        Spacer()
                    }
                }
                .frame(width: geometry.size.width, height: 60)
                .background(Color(red: 75/255, green: 160/255, blue: 108/255))
//                .cornerRadius(5)
//                .padding()
            }
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.house))
    }
}
