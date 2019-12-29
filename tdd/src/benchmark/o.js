'use strict';

var _benchmark = require('benchmark');

var _benchmark2 = _interopRequireDefault(_benchmark);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var str = "e";
var words = ['google', 'bing', 'yahoo'];
var suite = new _benchmark2.default.Suite();

suite.add('RegExp', function () {
			var regex = new RegExp('(' + words.join('|') + ')', 'i');

			var matches = str.match(regex);
			//console.log(matches.length);
}).add('Array', function () {
			for (var i = 0; i < words.length; i++) {
						if (str.indexOf(words[i]) > 0) {
									// got match
									break;
						}
			}
}).on('cycle', function (e) {
			console.log(String(e.target));
}).on('complete', function (e) {
			console.log('Fastest is ' + this.filter('fastest').map('name'));
}).run({ "async": true });
