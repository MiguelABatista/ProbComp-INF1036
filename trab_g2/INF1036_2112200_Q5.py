#Trabalho para G2 de Probabilidade Computacional - INF1036
#Miguel dos Anjos Batista - 2112200

import random as rd
import numpy as np

def checa_G(x,y,z):
    if x+y+z > 1:
        return True
    return False

def checa_H(x,y,z):
    if x*x+y*y+z*z < 1:
        return True
    return False

nsamples = 100000

p_g = 0
p_h = 0
p_geh = 0
p_gouh = 0
p_ng = 0
p_nh = 0

for _ in range(nsamples):
    x = rd.random()
    y = rd.random()
    z = rd.random()
    g = checa_G(x,y,z)
    h = checa_H(x,y,z)
    if g:
        p_g += 1
        p_gouh += 1
        if h:
            p_h += 1
            p_geh += 1
        else:
            p_nh += 1
    else:
        p_ng += 1
        if h:
            p_h += 1
            p_gouh += 1
        else:
            p_nh += 1

p_g /= nsamples
p_h /= nsamples
p_geh /= nsamples
p_gouh /= nsamples
p_ng /= nsamples
p_nh /= nsamples

print(p_g,p_h,p_geh,p_gouh,p_ng,p_nh)