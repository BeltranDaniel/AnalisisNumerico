
MAX_ITERACIONES = 1000
def f(x):
  return x-5

def metodoIntuitivo(a,b,e):
    E = e
    x = a
    d = (b-a)/10
    i = 0

    if f(a)*f(b) > 0:
      return None

    while abs(d) > E and i < MAX_ITERACIONES:
        x+=d

        if f(x-d)*f(x) < 0:
            d = -1*(d/10)
        i += 1
        print("i = " + str(i) + "  x = " + str(x) + "  E=" + str(d) )

    return (x)

temp = 10
e = 0.001
a = 0
b = 15

print(metodoIntuitivo(a,b,e))
  