import math


def combinations(n, r):
    if (r > n):
        return "r cannot be greater thatn n"
    else:
        total = 0
        total = math.factorial(n)/(math.factorial(n-r) * math.factorial(r))
        return total


def permutation(n, r):
    if (r > n):
        return "r cannot be greater thatn n"
    else:
        total = 0
        total = math.factorial(n)/math.factorial(n-r)
        return total


def prob_event(frec, total_frec):
    return frec/total_frec


def poisson(miu, x):
    total = ((miu**x)*(math.e**(miu*-1)))/(math.factorial(x))
    return total


def combinations(n, r):
    if (r > n):
        return "r cannot be greater thatn n"
    else:
        total = 0
        total = math.factorial(n)/(math.factorial(n-r) * math.factorial(r))
        return total


def binomial(n, p, x):
    if p > 1:
        print('p cant be greater than 1')
    else:
        q = 1-p
        c = combinations(n, x)
        total = c*(p**x)*(q**(n-x))
        return total


def geometric(p, x):
    if p > 1:
        print('p cant be greater than 1')
    else:
        total = ((1-p)**(x-1))*p
        return total


def probability_distribution(freq, total):
    l = []
    for f in freq:
        l.append(f/total)
    return l


def mean_calc(posibility, probability):
    l = []
    for pos, prob in zip(posibility, probability):
        l.append(pos*prob)
    return l


def variance_calc(lis, mean, prob):
    total = 0
    for e, p in zip(lis, prob):
        total += ((e-mean)**2)*p
    return total


def standar_dev(variance):
    return math.sqrt(variance)

def find_x_value_z_score(miu,z,sigma):
    return miu + z*sigma



print(find_x_value_z_score(50,1.28,10))