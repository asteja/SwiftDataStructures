//: Playground - noun: a place where people can play

import UIKit
import Foundation

var cookies = [[Int]](repeating: [Int](repeating: 0, count: 7), count: 9)

var arr = [[Int]](repeatElement([Int](repeatElement(5, count: 4)), count: 5))

public struct Array2D<T> {
    public let columns: Int
    public let rows: Int
    fileprivate var array: [T]
    
    public init(columns: Int, rows: Int, initialValue: T) {
        self.columns = columns
        self.rows = rows
        array = .init(repeating: initialValue, count: rows*columns)
    }
    
    public subscript(column: Int, row: Int) -> T {
        get {
            precondition(column < columns && column >= 0, "Column \(column) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            precondition(row < rows && row >= 0, "Row \(row) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            return array[row*columns + column]
        }
        set {
            precondition(column < columns && column >= 0, "Column \(column) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            precondition(row < rows && row >= 0, "Row \(row) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            array[row*columns + column] = newValue
        }
    }
}


var symbol = Array2D(columns: 4, rows: 3, initialValue: 2)

for i in 0..<4 {
    for j in 0..<3 {
        symbol[i,j] = i
    }
}

print(symbol)


