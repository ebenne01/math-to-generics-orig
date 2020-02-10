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

// section 2.2
func multiplyAccumulate0(_ r: Int, n: Int, a: Int) -> Int {
  if n == 1 { return r + a }
  if isOdd(n) {
    return multiplyAccumulate0(r + a, n: half(n), a: a + a)
  } else {
    return multiplyAccumulate0(r, n: half(n), a: a + a)
  }
}

func multiplyAccumulate1(_ r: Int, n: Int, a: Int) -> Int {
  var rVal = r
  if n == 1 { return rVal + a }
  if isOdd(n) {
    rVal += a
  }
  return multiplyAccumulate1(rVal, n: half(n), a: a + a) // tail-recursive
}

func multiplyAccumulate2(_ r: Int, n: Int, a: Int) -> Int {
  var rVal = r
  if isOdd(n) {
    rVal += a
  }
  if n == 1 { return rVal }
  return multiplyAccumulate1(rVal, n: half(n), a: a + a) // tail-recursive
}

func multiplyAccumulate3(_ r: Int, n: Int, a: Int) -> Int {
  var rVal = r
  if isOdd(n) {
    rVal += a
  }
  if n == 1 { return rVal }
  let halfN = half(n)
  let doubleA = a + a
  return multiplyAccumulate1(rVal, n: halfN, a: doubleA) // strictly tail-recursive
}

func multiplyAccumulate4(_ r: Int, n: Int, a: Int) -> Int {
  // conversion to iterative
  var rVal = r
  var nVal = n
  var aVal = a
  
  while true {
    if isOdd(nVal) {
      rVal = rVal + aVal
      if nVal == 1 { return rVal }
    }
    nVal = half(nVal)
    aVal = aVal + aVal
  }
}

func multiply2(_ n: Int, a: Int) -> Int {
  if n == 1 { return a }
  return multiplyAccumulate4(a, n: n - 1, a: a)
}

func multiply3(_ n: Int, a: Int) -> Int {
  var nVal = n
  var aVal = a
  
  while !isOdd(nVal) {
    aVal = aVal + aVal
    nVal = half(nVal)
  }
  
  if nVal == 1 { return aVal }
  return multiplyAccumulate4(aVal, n: nVal - 1, a: aVal)
}

func multiply4(_ n: Int, a: Int) -> Int {
  var nVal = n
  var aVal = a
  
  while !isOdd(nVal) {
    aVal = aVal + aVal
    nVal = half(nVal)
  }
  
  if nVal == 1 { return aVal }
  return multiplyAccumulate4(aVal, n: half(nVal - 1), a: aVal + aVal)
}
