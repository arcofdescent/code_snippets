#!/usr/bin/python3

import sys
import unittest
sys.path.append('.')
from bullcow import get_score_bull, get_score_cow

class Bull(unittest.TestCase):
    def test(self):
        self.assertEqual(get_score_bull(4567, 4678), 'B')
        self.assertEqual(get_score_bull(8934, 2314), 'B')
        self.assertEqual(get_score_bull(8934, 8914), 'BBB')
        self.assertEqual(get_score_bull(1234, 1624), 'BB')

class Cow(unittest.TestCase):
    def test(self):
        self.assertEqual(get_score_cow(4567, 4678), 'CC')
        self.assertEqual(get_score_cow(8934, 2314), 'C')
        self.assertEqual(get_score_cow(8934, 4396), 'CCC')

def main():
    unittest.main()

if __name__ == '__main__':
    main()

