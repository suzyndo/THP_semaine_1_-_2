def add(x,y)
  return x+y
end

def subtract(x,y)
  return x-y
end

def sum(x)
return x.sum
end

def multiply (x,y)
  return x*y
end

def power (x,y)
  return x**y
end

def factorial (x)
  return (1..x).reduce(:*) || 1 #comprend l'exception du 0 qui a un factoriel de 1
end
