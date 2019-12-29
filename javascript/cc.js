
let cardTest = {
hipercard: {
    test: function (cc) {
	return (/^(60|384)/).test(cc) && (cc.length <= 16 || cc.length <= 13);
    }
},
elo: {
    test: function (cc) {
	return (/^(401(178|179)|431274|438935|451416|457(393|631|632)|504175|506(699|7[0-6][0-9]|77[0-8])|509[0-9][0-9][0-9]|627780|636(297|368)|65003([1-3])|6500(3[5-9]|4[0-9]|5[0-1])|6504(0[5-9]|[1-3][0-9])|650(48[5-9]|49[0-9]|5[0-2][0-9]|53[0-8])|650(54[1-9]|5[5-8][0-9]|59[0-8])|6507(0[0-9]|1[0-8])|65072[0-7]|6509(0[1-9]|1[0-9]|20)|6516(5[2-9]|[6-7][0-9])|6550([0-1][0-9])|6550(2[1-9]|[3-4][0-9]|5[0-8]))/).test(cc) && cc.length <= 16;
    }
},
amex: {
    test: function (cc) {
	return (/^(34|37)/).test(cc) && cc.length <= 15;
    }
},
mastercard: {
    test: function (cc) {
	return (/^((5[1-5])|2(((22[1-9]|(2[3-9]|[3-6][0-9])[0-9]|7[0-1][0-9])[0-9]{2})|720[0-9]{2}))/).test(cc) && (cc.length <= 16);
    }
},
visa: {
    test: function (cc) {
	return (/^(4)/).test(cc) && cc.length <= 16;
    }
},
dinersclub: {
    test: function (cc) {
	return (/^(30[0-5]|3[68])/).test(cc) && cc.length <= 16;
    }
},
};

let expected = {
    '6062822931624414': 'hipercard',
    '6062821076113738': 'hipercard',
    '3841001111222': 'hipercard',
    '6062825624254001': 'hipercard',
    '378282246310005': 'amex',
    '30569309025904': 'diners',
    '4111111111111111': 'visa',
    '5105105105105100': 'mastercard',
};

for (k in expected) {
    console.log("testing for " + k + ": " + expected[k])

    for (cc in cardTest) {
	if (cardTest[cc].test(k)) {
	    console.log("Card is " + cc)
	    break
	}
    }
}

