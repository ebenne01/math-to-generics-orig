//
//  Chapter 2
//  math-to-generics
//
//  Created by Edward Bennett on 1/26/20.
//

// section 2.1
func half(_ n: Int) -> Int {
  return n >> 1
}

func isOdd(_ n: Int) -> Bool {
  return (n & 0x1) == 1
}

func multiply0(_ n: Int, a: Int) -> Int {
  if n == 1 { return a }
  return multiply0(n - 1, a: a) + a
}

func multiply1(_ n: Int, a: Int) -> Int {
  if n == 1 { return a }
  let result = multiply1(half(n), a: a + a)
  if isOdd(n) {
    return result + a
  }
  return result
}

func multiplyBy15(_ a: Int) -> Int {
  // addition chain
  let b = (a + a) + a
  let c = b + b
  return (c + c) + b
}
