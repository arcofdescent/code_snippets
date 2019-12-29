
let charToFind = "e";
let words = [ 'aardvark', 'wolf', 'octopus', 'alligator', 'anaconda', 'cat', 'cheetah',
	      'deer', 'dog', 'elephant', 'ferret', 'fish', 'fox', 'tayra', 'tegu',
	      'tern', 'tiger', 'upupa', 'urial', ];

function reg() {
    let numTimes = 0;
    let regex = new RegExp(charToFind);

    words.forEach(function(w) {
	let matches = w.match(regex);

	if (matches) {
	    numTimes++;
	}
    });

    console.log("Number of words: " + words.length);
    console.log(charToFind + " appears " + numTimes + " times");
}

function reg2() {
    let numTimes = 0;
    let regex = new RegExp(charToFind);

    for (let i=0; i < words.length; i++) {
	let matches = words[i].match(regex);

	if (matches) {
	    numTimes++;
	}
    }
    
    console.log("Number of words: " + words.length);
    console.log(charToFind + " appears " + numTimes + " times");
}

function idx() {
    let numTimes = 0;

    for (let i=0; i < words.length; i++) {
	if (words[i].indexOf(charToFind) >= 0) {
	    numTimes++;
	}
    }

    console.log("Number of words: " + words.length);
    console.log(charToFind + " appears " + numTimes + " times");
}

reg();
reg2();
idx();


