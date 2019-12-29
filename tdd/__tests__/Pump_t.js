
jest.autoMockOff();

import Pump from '../src/Pump';

describe('Pump', () => {
    it('new Pump()', () => {
	let pump = new Pump()
	expect(pump instanceof Pump).toBe(true);
    })

    it('new Pump() with arguments', () => {
	let pump = new Pump(10);
	expect(pump instanceof Pump).toBe(true);
	expect(pump.capacity).toEqual(10);
	expect(pump.distToNextPump).toEqual(0);
    })
});
