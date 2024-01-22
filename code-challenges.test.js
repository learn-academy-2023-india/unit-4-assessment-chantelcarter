// UNIT 4: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly. If you get stuck, please leave comments to help us understand your thought process.

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Prompt: Create a function that takes in a number (greater than 2) and returns an array containing the Fibonacci sequence. The length of the array is determined by the argument of the function.

// a) Create a test with expect statements for each of the variables provided.

describe("fibonacci", () => {
  it("a function that takes in a number (greater than 2) and returns an array containing the Fibonacci sequence", () => {
    const fibonacciLength1 = 6
    // Expected output: [1, 1, 2, 3, 5, 8]
    const fibonacciLength2 = 10
    // Expected output: [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

    expect(fibonacci(fibonacciLength1)).toEqual([1, 1, 2, 3, 5, 8]);
    expect(fibonacci(fibonacciLength2)).toEqual([1, 1, 2, 3, 5, 8, 13, 21, 34, 55])
  })
})

// ran the test without a function and the test failed (good fail)

// b) Create the function that makes the test pass.

// Pseudo code:
// input: create a fucntion called fibonacci
// output: returns array containing the fibonacci sequence
// i'm using a parameter to make the arrays
// .map to iterate across each value

// const fibonacci = (array) => {
//     if (array <= 0) {
//         return []
//     }
//     const sequence = [1, 1]
//     for (let i = 2; i < array; i++) {
//         sequence.push(sequence[i - 1] + sequence[i -2])
//     }
//     return sequence
// }
// i have not been able to figure out how to make this code work so i'm using chatgpt
function fibonacci(n) {
  const sequence = [1, 1]
  
  for (let i = 2; i < n; i++) {
    const nextNumber = sequence[i - 1] + sequence[i - 2]
    sequence.push(nextNumber)
  }

  return sequence
}

// Test Suites: 1 passed, 1 total
// Tests:       1 passed, 1 total
// this was actually very hard, but i  see that a for loop was needed in order to interate across the array. then it created another variable that takes the index - 1 plus the index - 2 and used a built in method .push to use that logic inside of the array.

// --------------------2) Create a function that takes in an object that contains up votes and down votes and returns the end tally.

// a) Create a test with expect statements for each of the variables provided.

describe("calculateDifference", () => {
  it("calculates the difference between upVotes and downVotes", () => {
    const votes1 = { upVotes: 13, downVotes: 2 }
    // Expected output: 11
    expect(calculateDifference(votes1)).toEqual(11)

    const votes2 = { upVotes: 2, downVotes: 33 }
    // Expected output: -31
    expect(calculateDifference(votes2)).toEqual(-31)
  })
})

// b) Create the function that makes the test pass.

function calculateDifference(votes) {
  return votes.upVotes - votes.downVotes
}

// Pseudo code:
// the function takes an object with 'upVotes' and 'downVotes' properties.
// calculate the difference by subtracting 'downVotes' from 'upVotes'.
// return the calculated difference.

// Test Suites: 1 passed, 1 total
// Tests:       2 passed, 2 total