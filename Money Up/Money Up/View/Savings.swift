//
//  Savings.swift
//  Money Up
//
//  Created by Nathan Graff on 12/10/23.
//

import SwiftUI

struct Savings: View {
    let data: [Double]
        let colors: [Color]

        var body: some View {
            GeometryReader { geometry in
                ZStack {
                    ForEach(0..<data.count, id: \.self) { index in
                        PieSlice(startAngle: angle(for: index),
                                 endAngle: angle(for: index + 1),
                                 clockwise: true)
                            .foregroundColor(colors[index % colors.count])
                            .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                    }
                }
            }
            .aspectRatio(1, contentMode: .fit)
        }
    
    private func angle(for index: Int) -> Angle {
        guard !data.isEmpty, index < data.count else {
            return .zero
        }

        let total = data.reduce(0, +)
        let percentage = data[index] / total
        return .degrees(360 * percentage)
    }
    }

    struct PieSlice: Shape {
        var startAngle: Angle
        var endAngle: Angle
        var clockwise: Bool

        func path(in rect: CGRect) -> Path {
            var path = Path()
            let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
            let radius = min(rect.width, rect.height) / 2

            path.move(to: center)
            path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
            path.closeSubpath()

            return path
        }
    }

    struct ContentView: View {
        let data: [Double] = [30, 50, 20]
        let colors: [Color] = [.blue, .green, .orange]

        var body: some View {
            Savings(data: data, colors: colors)
        }
    }


struct Savings_Previews: PreviewProvider {
    static var previews: some View {
        Savings(data: [30, 50, 20], colors: [.blue, .green, .orange])
    }
}
