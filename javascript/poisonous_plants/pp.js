
function processData(input) {
  //Enter your code here
  let matches = input.split("\n")
  matches.pop()
  console.log(matches)

  let numPlants = matches[0]
  let plants = matches[1].split(" ")
  let numDays = 0

  while (checkPlants(plants)) {
    numDays++
    console.log({plants})
  }
  console.log({numDays})
} 

function checkPlants(plants) {
  let deadPlants = []

  for (let i = 0; i < plants.length - 1; i++) {
    if (+plants[i+1] > +plants[i]) {
      deadPlants.push(i+1)
    }
  }
  console.log({deadPlants})

  // remove the plants
  if (deadPlants.length > 0) {
    for (let i = 0; i < deadPlants.length; i++) {
      plants.splice(deadPlants[i], 1)

      // modify indices
      for (let j = i+1; j < deadPlants.length; j++) {
        deadPlants[j] = deadPlants[j] - 1
      }
    }
    return true
  }
  else {
    return false
  }
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

