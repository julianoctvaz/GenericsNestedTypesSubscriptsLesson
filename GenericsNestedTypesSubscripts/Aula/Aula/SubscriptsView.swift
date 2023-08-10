//
//  SubscriptsView.swift
//  Aula
//
//  Created by Juliano Vaz on 09/08/23.
//

import SwiftUI

// MARK: - SUBSCRIPTS EXAMPLES

struct Matrix {
    var data: [[Double]]
    subscript(row: Int, column: Int) -> Double {
        get {
            return data[row][column]
        }
        set {
            data[row][column] = newValue
        }
    }
}



struct SafeArray<T> {
    private var items: [T]
    
    init(_ items: [T]) {
        self.items = items
    }
    
    subscript(index: Int) -> T? {
        return (index >= 0 && index < items.count) ? items[index] : nil
    }
}

struct SubscriptsView: View {
    var body: some View {
        VStack {
            
            //let safeNumbers = SafeArray([10, 20, 30])
            //print(safeNumbers[1] ?? "Índice fora do alcance") // Saída: 20
            //print(safeNumbers[5] ?? "Índice fora do alcance") // Saída: Índice fora do alcance
            
            
            //var matrix = Matrix(data: [[1.0, 2.0], [3.0, 4.0]])
            //
            //print(matrix[0, 1]) // Output: 2.0, accessing the element at the first row and second column
            //
            // Setting the value of the element at the first row and second column to 5.0
            //matrix[0, 1] = 5.0
            //
            //print(matrix[0, 1]) // Output: 5.0, reflecting the updated value
            
            
        }
        .padding()
    }
}



