#!/usr/bin/python3

import unittest
from bst import BST

class TestBST(unittest.TestCase):

    def setUp(self):
        self.bst =  BST()

    def test_new(self):
        self.assertIsInstance(self.bst, BST)

    def test_get_empty_tree(self):
        self.assertEqual(len(self.bst.get_nodes()), 0)

    def test_add_node(self):
        self.assertEqual(len(self.bst.get_nodes()), 0)

        self.bst.add_node(6)
        self.bst.add_node(4)
        self.bst.add_node(42)
        self.bst.add_node(56)
        self.bst.add_node(1)
        self.assertEqual(len(self.bst.get_nodes()), 5)

    def test_nodes_are_sorted(self):

        self.bst.add_node(6)
        self.bst.add_node(4)
        self.bst.add_node(42)
        self.bst.add_node(56)
        self.bst.add_node(1)

        nodes = self.bst.get_nodes()
        for idx, v in enumerate(nodes):
            if idx < len(nodes) - 1:
                self.assertEqual(nodes[idx] <= nodes[idx+1], True)
        
    def test_search(self):

        self.bst.add_node(6)
        self.bst.add_node(4)
        self.bst.add_node(42)
        self.bst.add_node(56)
        self.bst.add_node(1)

        self.assertEqual(self.bst.search(4), True)
        self.assertEqual(self.bst.search(47), False)

if __name__ == '__main__':
    unittest.main()
    
