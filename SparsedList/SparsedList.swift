//
//  SparsedList.swift
//  SparsedList
//
//  Created by Oleksiy on 22.03.2021.
//

import Foundation

class SparsedList<T: Comparable> {
    
    private var rootNode: Node<T>?
    
    func get(x: Int, y: Int, z: Int) -> Node<T>? {
        return nil
    }
    
    func set(x: Int, y: Int, z: Int, value: T){
        guard let root = rootNode else {
            rootNode = Node(x: x, y: y, z: z, value: value)
            return
        }
        
        
    }
    
    func sortNonEmpty() {
        
    }
    
    func toString() -> String {
        var node = rootNode
        var res = ""
        
        while let nodeToPrint = node {
            res += "\(nodeToPrint.toString())\n"
            node = nodeToPrint.nextNode
        }
        
        return res
    }
    
}
