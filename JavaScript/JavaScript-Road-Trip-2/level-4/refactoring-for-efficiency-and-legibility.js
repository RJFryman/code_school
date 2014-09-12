// Before

function mystery (x, y) {
  var a = 4*x*y;
  var b = 3*y + 5;
  var c = a + b;
  return c;
}

// After

function mystery (x, y) {
  return (4*x*y) + (3*y + 5);
}
