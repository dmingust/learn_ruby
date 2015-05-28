def add(a, b)
	return a + b
end

def subtract(a, b)
	return a - b
end

def sum(an_array)
	s = 0
	an_array.each {|i| s += i}
	return s
end

def multiply(an_array)
	result = 1
	an_array.each {|i| result *= i}
	return result
end

def power(a, b)
	return a**b
end

def factorial(n)
	sum = 1
	(1..n).each {|i| sum *= i}
	return sum
end