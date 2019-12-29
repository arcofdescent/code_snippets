
class Pump {
  constructor() {
    this.capacity = 0
    this.distToNextPump = 0
  }
}

function processData(input) {
  let matches = input.split("\n")
  matches.pop()
  //console.log(matches)

  let numPumps = matches[0]
  let pumps = []

  for (let i = 1; i < matches.length; i++) {
    let pInfo = matches[i].split(' ')
    let p = new Pump()
    p.capacity = +pInfo[0]
    p.distToNextPump = +pInfo[1]

    pumps.push(p)
  }

  //console.log({pumps})

  for (let i = 0; i < pumps.length; i++) {
    if (checkRoute(pumps, i)) {
      console.log(i)
      break
    }
  }
} 

function checkRoute(pumps, idx) {
  let capacity = 0

  for (let i = idx; i < pumps.length; i++) {
    capacity += pumps[i].capacity
    //console.log({capacity})
    if (capacity < pumps[i].distToNextPump) {
      //console.log('retuning false')
      return false
    }
    else {
      capacity -= pumps[i].distToNextPump
    }
  }
  for (let i = 0; i < idx; i++) {
    //console.log('second for')
    capacity += pumps[i].capacity
    if (capacity < pumps[i].distToNextPump) {
      return false
    }
    else {
      capacity -= pumps[i].distToNextPump
    }
  }
  
  //console.log('retuning true')
  return true
}

process.stdin.resume()
process.stdin.setEncoding("ascii")
_input = ""
process.stdin.on("data", function (input) {
  _input += input
})

process.stdin.on("end", function () {
  processData(_input)
})

