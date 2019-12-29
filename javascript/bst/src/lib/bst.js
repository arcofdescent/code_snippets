
class Node {
    constructor() {
	this.data = 0
	this.leftChild = null
	this.rightChild = null
    }

    insert(v) {

	let currNode = this
	
	if (v < currNode.data) {
	    if (currNode.leftChild == null) {
		let n = new Node()
		n.data = v
		currNode.leftChild = n
	    } else {
		currNode.leftChild.insert(v)
	    }
	} else {
	    if (currNode.rightChild == null) {
		let n = new Node()
		n.data = v
		currNode.rightChild = n
	    } else {
		currNode.rightChild.insert(v)
	    }
	}
    }
    
    getItems() {

	let vals = []

	let currNode = this
	
	if (currNode.leftChild != null) {
	    vals.push(...currNode.leftChild.getItems())
	}

	vals.push(currNode.data)

	if (currNode.rightChild != null) {
	    vals.push(...currNode.rightChild.getItems())
	}

	return vals
    }
}

class BST  {
    contructor() {
 	this.root = new Node()
    }
    
    insert(v) {

	// 0 not allowed
	if (v == 0)
	    return
	
	// TODO check if v already exists
		
	if (this.root == null) {
	    this.root = new Node()
	    this.root.data = v
	    return
	}
	
	this.root.insert(v)
    }

    getItems() {

	if (this.root == null)
	    return []
	
	//console.log(this.root)
	let vals = this.root.getItems()

	return vals
    }

    search(v) {

	let currNode = this.root

	while (currNode != null) {
	    if (currNode.data == v) {
		return true
	    } else if (v < currNode.data) {
		currNode = currNode.leftChild
	    } else {
		currNode = currNode.rightChild
	    }
	}

	return false
    }
	    
}

export default BST

