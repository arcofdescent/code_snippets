
class Node:
    left = None
    right = None
    val = None
    
class BST():

    def __init__(self):
        self.root_node = None

    def add_node(self, v):
        if self.root_node == None:
            n = Node();
            n.val = v
            self.root_node = n
        else:
            self._add_node(self.root_node, v)

    def _add_node(self, node, v):
        if v <= node.val:
            if node.left == None:
                n = Node()
                n.val = v
                node.left = n
            else:
                self._add_node(node.left, v)
        else:
            if node.right == None:
                n = Node()
                n.val = v
                node.right = n
            else:
                self._add_node(node.right, v)

    def get_nodes(self):
        if self.root_node != None:
            nodes = []
            return self._get_nodes(self.root_node, nodes)
        else:
            return []

    def _get_nodes(self, node, nodes):
        
        if node.left != None:
            self._get_nodes(node.left, nodes)

        nodes.append(node.val)

        if node.right != None:
            self._get_nodes(node.right, nodes)

        return nodes

    def search(self, val):

        curr_node = self.root_node

        while curr_node != None:
            if curr_node.val == val:
                return True
            elif val <= curr_node.val:
                curr_node = curr_node.left
            else:
                curr_node = curr_node.right

        return False
