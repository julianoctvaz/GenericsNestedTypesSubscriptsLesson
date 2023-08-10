//
//  ContentView.swift
//  Aula
//
//  Created by Juliano Vaz on 09/08/23.
//
import SwiftUI

//MARK: - GENERICS EXAMPLES

//MARK: - CLASS

struct Stack<Element> {
    var items = [Element]()
    
    mutating func getItens() -> [Element] {
        return items
    }
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element? {
        return items.popLast()
    }
}

//MARK: - VIEW

struct StackView: View {
    @State private var newItem: String = ""
    @State private var stack = Stack<String>()
    @State private var stack2 = Stack<String>()
    @State private var poppedItem: String? = nil
    
    var body: some View {
        VStack {
            TextField("Enter a new item", text: $newItem)
                .border(.black)
                .padding()
            
            Button("Push item") {
                stack.push(newItem)
                newItem = ""
            }
            
            Button("Pop item") {
                poppedItem = stack.pop()
            }
            
            Text("The current stack is: \(stack.getItens().joined(separator: ", "))")
            
            if let poppedItemSaved = poppedItem {
                Text("The last popped item was: \(poppedItemSaved)")
            }
            
            if stack.getItens().isEmpty {
                Text("Empty :( ")
            }
        }
        .padding()
    }
}
