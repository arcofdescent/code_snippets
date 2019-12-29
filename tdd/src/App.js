"use strict";

import Pump from "./Pump";

class App {
    constructor() {
	this.numPumps = 0;
	this.pumps = [];
    }

    processInput(input = "") {
	if (input === null) {
	    this.numPumps = 0;
	    return;
	}

	let inputStr = input.toString();

	// remove newline at end
	inputStr = inputStr.replace(/\n$/, "");
	
	let matches = input.toString().split("\n");

	this.numPumps = parseInt(matches[0]) || 0;

	for (let i = 1; i < matches.length; i++) {
	    let pInfo = matches[i].split(' ');
	    let p = new Pump(parseInt(pInfo[0]), parseInt(pInfo[1]));

	    this.pumps.push(p);
	}
    }
    
    checkRoute(idx) {
	let capacity = 0;

	for (let i = idx; i < this.pumps.length; i++) {
	    capacity += this.pumps[i].capacity;
	    
	    if (capacity < this.pumps[i].distToNextPump) {
		return false;
	    }
	    else {
		capacity -= this.pumps[i].distToNextPump;
	    }
	}
	
	for (let i = 0; i < idx; i++) {
	    capacity += this.pumps[i].capacity;
	    
	    if (capacity < this.pumps[i].distToNextPump) {
		return false;
	    }
	    else {
		capacity -= this.pumps[i].distToNextPump;
	    }
	}
	
	return true;
    }
}

export default App;
