//
//  Spending.swift
//  Money Up
//
//  Created by Nathan Graff on 12/10/23.
//

import SwiftUI
//import xlsxwriter

struct Spending: View {
    @State private var rowData = [
        ["Sample Data", "Sample Data"],
        ["Sample Data", "Sample Data"],
        ["Sample Data", "Sample Data"],
        ["Sample Data", "Sample Data"]
    ]

    var body: some View {
        ZStack {
            Color(red: 105/255, green: 212/255, blue: 138/255)
                .ignoresSafeArea()

            VStack {
                HStack {
                    Spacer()
                    Text("Spending")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(Color.white)
                    Spacer()
                }
                .padding(.bottom, 8) // Adjust the padding as needed
                .background(Color(red: 75/255, green: 160/255, blue: 108/255))

                Spacer()
                
                Text("Monthly Spending")
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .bold()
                    .underline()
                
                VStack(spacing: 0) {

                    ForEach(0..<rowData.count, id: \.self) { rowIndex in
                        HStack(spacing: 0) {
                            ForEach(0..<rowData[rowIndex].count, id: \.self) { columnIndex in
                                TableCell(content: $rowData[rowIndex][columnIndex])
                                    .border(Color.black, width: 1)
                            }
                        }
                        .frame(height: 50)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        .padding(.top, 15)
                    }
                    
                    HStack {
                        Spacer()
                        Spacer()
                        Button(action: {
                            addRow()
                        }) {
                            Text("+")
                                .font(.system(size: 25))
                        }
                        .foregroundColor(Color.gray)
                        
                        Button(action: {
                            deleteLastRow()
                        }) {
                            Text("-")
                                .font(.system(size: 25))
                        }
                        .foregroundColor(Color.gray)
                        .padding(.trailing, 30)
                        
                    }
                }
                .background(Color.white)
                .frame(width: 360)
                .cornerRadius(20)
                
                Spacer()
                
            }
        }
    }

    private func addRow() {
        let newRow = Array(repeating: "New Row, New Column", count: rowData[0].count)
        rowData.append(newRow)
    }
    
    private func deleteLastRow() {
            if !rowData.isEmpty {
                rowData.removeLast()
            }
        }
    
}

struct TableCell: View {
    @Binding var content: String

    var body: some View {
        TextField("", text: $content)
            .padding(10)
            .frame(maxWidth: 160, alignment: .leading)
            .foregroundColor(.black)
    }
}

struct Spending_Previews: PreviewProvider {
    static var previews: some View {
        Spending()
    }
}
