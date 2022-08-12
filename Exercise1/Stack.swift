import Foundation

class Stack<T> {
    var items : [T]
    
    init(items: [T]) {
        self.items = items
    }
    func push(_ item: T) {
        items.append(item)
    }
    func pop() -> T? {
        return items.isEmpty ? nil : items.removeLast()
    }
    func peek() -> T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
    func isEmpty() -> Bool {
        return items.isEmpty
    }
}

class Node {
    var x : Int
    init(x: Int) {
        self.x = x
    }
}
var n1 = Node(x: 4)
var n2 = Node(x: 3)
var myStack = Stack<Node>()
myStack.push(n1)
print(myStack.items)
myStack.push(n2)
myStack.pop()
print(myStack.items)
myStack.isEmpty()
myStack.pop()
print(myStack.peek())
myStack.pop()
myStack.pop()
myStack.pop()
myStack.isEmpty()
print(myStack.peek())

