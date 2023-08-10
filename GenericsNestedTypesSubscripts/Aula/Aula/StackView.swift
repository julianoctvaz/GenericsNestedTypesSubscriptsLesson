//
//  ContentView.swift
//  Aula
//
//  Created by Juliano Vaz on 09/08/23.
//

import SwiftUI

// MARK: - GENERICS EXAMPLE

class Stack<Element> {
    var items = [Element]()
    
    func push(_ item: Element) {
        items.append(item)
    }
    
    func pop() -> Element? {
        return items.popLast()
    }
    
    func getItens () -> [Element] {
        return items
    }
}

struct Stack2<Element> {
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element? {
        return items.popLast()
    }
    
    func getItens () -> [Element] {
        return items
    }
}

struct StackView: View {
    
    @State private var stack = Stack2<String>()
    @State private var newItem: String = ""
    @State private var poppedItem: String? = nil
    
    var body: some View {
        VStack {
            TextField("Enter a new item", text: $newItem)
                .border(.black)
                .padding()
            
            Button("Push Item") {
                stack.push(newItem)
                newItem = ""
            }
            
            Button("Pop Item") {
                poppedItem = stack.pop()
            }
            
            Text("The current stack is: \(stack.getItens().joined(separator: ", "))")
            if let poppedItem = poppedItem {
                Text("And the last popped item was: \(poppedItem)")
            }
            if stack.getItens().isEmpty {
                Text("Empty :(")
            }
        }
        .padding()
    }
}
