import UIKit
import Foundation

var str = "creating Binary search tree using swift"



class Node<T>  {
    
    weak var left : Node?
    weak var right : Node?
    var val: T
    
    init(val : T) {
        self.val = val
    }
}


class BinarySearchTree<T> {
    
   func insertNode(root: Node<Int>, NodeAdd: Node<Int>) {
    
        var rootData = root
    
        if rootData == nil {
            rootData = NodeAdd
        } else {
            
            if rootData.val <  NodeAdd.val {
                
                if rootData.right == nil {
                print("******* right ")
                    
                rootData.right = NodeAdd
//                    print(rootData.right!.val)
                    print(NodeAdd.val)
                } else {
                    print(rootData.right!.val)
                    self.insertNode(root: rootData.right!, NodeAdd: NodeAdd)
                }

            } else {
                if rootData.left == nil {
                    
                    rootData.left = NodeAdd
                    print("******* left ")
//                    print(rootData.left!.val)
                    print(NodeAdd.val)
                } else {
                    print(rootData.left!.val)
                    self.insertNode(root: rootData.left!, NodeAdd: NodeAdd)
                }
                
            }
        }
    
    
    }
    
    
    
    
    func inordering(root: Node<Int>) {
        
//        if root != nil {
//        inordering(root: root.left)
//            print(root?.val)
//        inordering(root: root?.right)
//        }
        
    }
    

    
}

var tree = BinarySearchTree<Int>()
var ro = Node(val: 50)


tree.insertNode(root: ro, NodeAdd: Node(val: 70))
tree.insertNode(root: ro, NodeAdd: Node(val: 10))
tree.insertNode(root: ro, NodeAdd: Node(val: 20))
tree.insertNode(root: ro, NodeAdd: Node(val: 75))
tree.insertNode(root: ro, NodeAdd: Node(val: 30))
tree.insertNode(root: ro, NodeAdd: Node(val: 88))
tree.insertNode(root: ro, NodeAdd: Node(val: 22))
tree.insertNode(root: ro, NodeAdd: Node(val: 35))
tree.insertNode(root: ro, NodeAdd: Node(val: 45))
tree.insertNode(root: ro, NodeAdd: Node(val: 55))
tree.insertNode(root: ro, NodeAdd: Node(val: 21))
tree.insertNode(root: ro, NodeAdd: Node(val: 15))
tree.insertNode(root: ro, NodeAdd: Node(val: 122))
tree.insertNode(root: ro, NodeAdd: Node(val: 12))



tree.inordering(root: ro)







