/**
 * Sample code for Assignment 3 - CodeSweep scanning.
 * Contains intentional vulnerabilities for AppScan CodeSweep to detect.
 */

// Hardcoded secret - CodeSweep should flag this
const SECRET_KEY = "mySecretKey12345";

function processInput(userInput) {
  // Dangerous: eval with user input
  return eval(userInput);
}
