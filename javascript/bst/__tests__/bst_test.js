
jest.autoMockOff()

import BST from '../src/lib/bst'

describe('BST', () => {
    it('new BST()', () => {
	let bst = new BST()
	expect(bst.getItems().length).toEqual(0)
    })

    
    it('BST with one item', () => {
	let bst = new BST()
	bst.insert(4)
	expect(bst.getItems().length).toEqual(1)
    })

    it('BST with multiple items', () => {
	let bst = new BST()
	bst.insert(4)
	bst.insert(9)
	bst.insert(2)
	bst.insert(14)
	let items = bst.getItems()
	expect(items.length).toEqual(4)
    })

    it('search', () => {
	let bst = new BST()
	bst.insert(4)
	bst.insert(9)
	bst.insert(2)
	bst.insert(14)

	expect(bst.search(9)).toBe(true)
	expect(bst.search(12)).toBe(false)
    })
})

