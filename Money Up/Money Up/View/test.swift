//
//  test.swift
//  Money Up
//
//  Created by Nathan Graff on 12/10/23.
//

import SwiftUI
import Charts

struct test: View {
    
    let workoutData = [
            (workoutType: "Home", data: Workout.walkWorkout),
            (workoutType: "Coffee Shop", data: Workout.runWorkout)
        ]
        
        var body: some View {
            VStack {
                Text("Results")
                    .font(.largeTitle)
                    .foregroundColor(.primary)
                Chart {
                    ForEach(workoutData, id: \.workoutType) { element in
                        ForEach(element.data) {
                            BarMark(x: .value("Day", $0.day), y: .value("Workout(in minutes)", $0.minutes))
                                
                        }
                        .foregroundStyle(by: .value("Workout(type)", element.workoutType))
                        .position(by: .value("Workout(type)", element.workoutType))
                    }
                }
            }
            .padding()
        }
    
}

#Preview {
    test()
}
