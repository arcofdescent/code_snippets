"use strict";

import App from "./App";

function processData(input) {

    let app = new App();
    app.processInput(input);
    
    for (let i = 0; i < app.numPumps; i++) {
	if (app.checkRoute(i)) {
	    console.log("Start at pump " + (i+1));
	    break;
	}
    }
} 

process.stdin.resume();
process.stdin.setEncoding("ascii");
let _input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
    processData(_input);
});
