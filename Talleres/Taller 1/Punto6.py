def metodoIntuitivo(a,b):
    E = 1e-6
    x = a
    d = (b-a)/10
    anterior = 0
    
    x = f(x)
    while d < E:
        anterior = x
        x = f(x)
        
        if anterior*x < 0:
            x = anterior
            d = -1*(d/10)
        x+=d
    return (x)