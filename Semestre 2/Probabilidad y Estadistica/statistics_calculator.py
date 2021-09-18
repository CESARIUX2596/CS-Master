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


b0 = binomial(6, 0.85, 0)
b1 = binomial(6, 0.85, 1)
b2 = binomial(6, 0.85, 2)
b3 = binomial(6, 0.85, 3)
b4 = binomial(6, 0.85, 4)
b5 = binomial(6, 0.85, 5)
b6 = binomial(6, 0.85, 6)

l = [b0, b1, b2, b3, b4, b5, b6]
count = 0
for i in l:
    print(count, " ", i)
    count += 1
print(l)

print(binomial(100, .67, 75))
