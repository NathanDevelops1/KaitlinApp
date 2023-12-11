//
//  Expensify.swift
//  Money Up
//
//  Created by Nathan Graff on 12/10/23.
//

import SwiftUI
import Charts

//struct Workout: Identifiable {
//    let id = UUID()
//    let day: String
//    let minutes: Int
//}
//
//extension Workout {
//    static let walkWorkout: [Workout] = [
//        .init(day: "Mon", minutes: 23),
//        .init(day: "Tue", minutes: 35)
//    ]
//    
//    static let runWorkout: [Workout] = [
//        .init(day: "Mon", minutes: 16),
//        .init(day: "Tue", minutes: 12)
//    ]
//}
//
//let workoutData = [
//    (workoutType: "Walk", data: Workout.walkWorkout),
//    (workoutType: "Run", data: Workout.runWorkout)
//]

struct Bar: Identifiable {
    let id = UUID()
    var name: String
    var week: String
    var value: Double
    var color: Color
    
    //    static var sampleBars: [Bar] {
    //        var tempBars = [Bar]()
    //        let days = ["1", "2", "3", "4"]
    //
    //        for (index, week) in days.enumerated() {
    //            let rand = [101, 157, 115, 100]
    //            let value = rand[index]
    //
    //            var color: Color = .green
    //
    //            if value > 115 {
    //                color = .red
    //            } else if value > 110 {
    //                color = .yellow
    //            } else {
    //                color = .green
    //            }
    //
    //            let bar = Bar(name: "\(index + 1)", week: week, value: Double(value), color: color)
    //            tempBars.append(bar)
    //        }
    //
    //        return tempBars
    //    }
    //
    //}
}
struct Expensify: View {
    
//    let workoutData = [
//            (workoutType: "Walk", data: Workout.walkWorkout),
//            (workoutType: "Run", data: Workout.runWorkout)
//        ]
        
        var body: some View {
            
            ZStack {
                Color(red: 105/255, green: 212/255, blue: 138/255)
                    .ignoresSafeArea()
//                VStack {
//                    Text("Results")
//                        .font(.largeTitle)
//                        .foregroundColor(Color.black)
//                    Chart {
//                        ForEach(workoutData, id: \.workoutType) { element in
//                            ForEach(element.data) {
//                                BarMark(x: .value("Day", $0.day), y: .value("Workout(in minutes)", $0.minutes))
//                            }
//                            .foregroundStyle(by: .value("Workout(type)", element.workoutType))
//                            .position(by: .value("Workout(type)", element.workoutType))
//                            .foregroundColor(Color.black) // Set text color to black
//                        }
//                    }
//                    .background(Color.white)
//                }
//                .padding()
//                .frame(width: 300, height: 300)
//                .background(Color.white)
//                .cornerRadius(10)
            }
        }
    
}
    
    
    struct Expensify_Previews: PreviewProvider {
        static var previews: some View {
            Expensify()
        }
    }
