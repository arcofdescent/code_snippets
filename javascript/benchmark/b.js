
import Benchmark from 'benchmark'

let referrer = 'http://bing.com'
let engines = [ 'google', 'bing', 'yahoo', ]
let suite = new Benchmark.Suite

suite.add('RegExp', function() {
  let regex = new RegExp('(' 
                    + engines.map(function(e) { return e.replace(/\./g, '\\.') }).join('|') 
                    + ')', 'i')
  if (referrer.search(regex)) {
    // got a match
  }
})
.add('Array', function() {
  for (let i = 0; i < engines.length; i++) {
    if (referrer.indexOf(engines[i]) > 0) {
      // got match
      break
    }
  }
})
.on('cycle', function(e) {
  console.log(String(e.target));
})
.on('complete', function(e) {
  console.log('Fastest is ' + this.filter('fastest').map('name'))
})
.run({"async": true})

