
import Benchmark from 'benchmark';

let charToFind = "e";
let words = [ 'google', 'bing', 'yahoo', 'here', ];
let suite = new Benchmark.Suite;

suite

    .add('RegExp', reg)

    .on('cycle', function(e) {
	console.log(String(e.target));
    })

    .on('complete', function(e) {
	console.log('Fastest is ' + this.filter('fastest').map('name'))
    })

    .run({"async": true});


function reg() {
    let numTimes = 0;
    let regex = new RegExp(charToFind);

    words.forEach(function(w) {
	let matches = w.match(regex);

	if (matches) {
	    numTimes += matches.length;
	}
    });

    console.log(charToFind + " appears " + numTimes + " times");
}

function reg2() {
    let numTimes = 0;
    let regex = new RegExp(charToFind);

    for (let i=0; i < words.length; i++) {
	let matches = words[i].match(regex);

	if (matches) {
	    numTimes += matches.length;
	}
    }
    
    console.log(charToFind + " appears " + numTimes + " times");
}

function idx() {
    let numTimes = 0;

    for (let i=0; i < words.length; i++) {
	if (words[i].indexOf(charToFind) > 0) {
	    numTimes++;
	}
    }

    console.log(charToFind + " appears " + numTimes + " times");
}
