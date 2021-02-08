import chroma, pixie, benchy

let mask = newMask(2560, 1440)

proc reset() =
  mask.fill(63)

reset()

timeIt "minifyBy2":
  let minified = mask.minifyBy2()
  doAssert minified[0, 0] == 63

reset()

timeIt "applyOpacity":
  mask.applyOpacity(0.5)
