(
f = {|a, b|
	// find the greatest common denominator
	var gcd = a.gcd(b);

	// divide the two numbers
	[(a / gcd).asInteger, (b / gcd).asInteger]
}
)

#x, y = f.value(30, 5)
