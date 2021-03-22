//
//  Node.swift
//  SparsedList
//
//  Created by Oleksiy on 22.03.2021.
//

import Foundation

class Node<T: Comparable> {
    let x: Int
    let y: Int
    let z: Int
    
    var value: T
    var nextNode: Node<T>?
    
    init(x: Int, y: Int, z: Int, value: T) {
        self.x = x
        self.y = y
        self.z = z
        
        self.value = value
    }
    
    func isOnCorrectPlace(otherNode: Node<T>) -> Bool {
        if self.value == otherNode.value {
            return true
        }
        
        var smallerNode = self
        var biggerNode = otherNode
        
        if smallerNode.value > biggerNode.value {
            smallerNode = otherNode
            biggerNode = self
        }
        
        if biggerNode.x < smallerNode.x {
            return true
        }
        
        if biggerNode.x == smallerNode.x {
            if biggerNode.y < smallerNode.y {
                return true
            }
            
            if biggerNode.y == smallerNode.y {
                return biggerNode.z < smallerNode.z
            }
        }
        
        return false
    }
    
    func toString() -> String {
        return "x: \(x), y: \(y), z: \(z); value: \(value)"
    }
    
}
