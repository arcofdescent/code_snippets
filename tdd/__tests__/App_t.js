
jest.autoMockOff();

import App from '../src/App';

describe('App', () => {
    it('new App()', () => {
	let app = new App()
	expect(app instanceof App).toBe(true);
    })

    it('new App() with input', () => {
	let app = new App();
	expect(app.numPumps).toEqual(0);
	
	app.processInput(3);
	expect(app.numPumps).toEqual(3);

	app.processInput("4");
	expect(app.numPumps).toEqual(4);

	app.processInput(null);
	expect(app.numPumps).toEqual(0);

	app.processInput("hjhjh67dhj9hjhds");
	expect(app.numPumps).toEqual(0);

	app.processInput("34fjkjdkjk");
	expect(app.numPumps).toEqual(34);
    })

    it('new App() with pumps', () => {
	let app = new App();
	expect(app.numPumps).toEqual(0);
	
	app.processInput("2\n2 1\n1 1\n");
	expect(app.numPumps).toEqual(2);
	expect(app.pumps[0].capacity).toEqual(2);
	expect(app.pumps[1].distToNextPump).toEqual(1);
    })

    it('checkRoute()', () => {
	let app = new App();
	expect(app.numPumps).toEqual(0);
	
	app.processInput("2\n2 1\n1 1\n");
	expect(app.checkRoute(0)).toBe(true);
	expect(app.checkRoute(1)).toBe(true);
    })

    it('checkRoute() 2', () => {
	let app = new App();
	expect(app.numPumps).toEqual(0);
	
	app.processInput("2\n2 3\n2 1\n");
	expect(app.numPumps).toEqual(2);
	
	expect(app.checkRoute(0)).toBe(false);
	expect(app.checkRoute(1)).toBe(true);
    })

});


