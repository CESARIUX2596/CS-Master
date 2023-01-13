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


def poisson(mu, x):
    total = ((mu**x)*(math.e**(mu*-1)))/(math.factorial(x))
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


def find_x_value_z_score(mu, z, sigma):
    x_val = mu + z*sigma
    return x_val

# Charpter 5

# x̄: sample_mean


def z_score(x, mu, sigma):
    z_score = (x-mu)/sigma
    return z_score


def z_score_to_x_value(mu, z, sigma):
    x_val = mu+(z*sigma)
    return x_val

# Central Limit Theorem n >= 30 or population normaly distributed


def mean_sampling_distribution(sample_mean):
    return sample_mean


def variance_sampling_distribution(sigma, n):
    variance_sampling_distribution = sigma/n
    return variance_sampling_distribution


def std_error(sigma, n):
    # Standard Deviation of the Sampling Distribution
    std_error = sigma/math.sqrt(n)
    return std_error


def z_core_std_error(sample_mean, sigma_mean, std_error):

    z_score = (sample_mean-sigma_mean)/std_error
    return z_score

# Charpter 6


def sample_mean_calc(arr):
    sample_mean = sum(arr)/len(arr)
    return sample_mean


def margin_error(z_c, sigma, n):
    E = z_c*std_error(sigma, n)
    return E


def c_confidence_interval(mu, sample_mean, margin_error):
    print("{},<{}<{}".format(sample_mean-margin_error, mu, sample_mean+margin_error))


def sample_standard_deviation(arr, sample_mean):
    numerator = 0
    for x in arr:
        numerator += x-sample_mean**2
    s_square = numerator/(len(arr)-1)
    s = math.sqrt(s_square)
    return s


def t_distribution(sample_mean, mu, s_std_dev, n):
    t = (sample_mean-mu)/(s_std_dev/math.sqrt(n))
    return t


def degrees_of_freedom(n):
    df = n-1
    return df


def margin_error_less_30(t_c, s, n):
    E = t_c*(s/math.sqrt(n))
    return E


def min_sample_size(z_c, sigma, E):
    n = ((z_c*sigma)/E)**2
    return E


def p_hat_q_hat(x, n):
    p_hat = x/n
    q_hat = 1-p_hat
    return p_hat, q_hat


def c_confidence_population(x, n, z_c):
    p_hat, q_hat = p_hat_q_hat(x, n)
    E = z_c*math.sqrt((p_hat*q_hat)/n)
    return E


def sigma_p_hat(p, q, n):
    sigma_p_hat = math.sqrt((p*q)/n)
    return sigma_p_hat


def chi_square(n, sample_variance, variance):
    chi_square = ((n-1)*sample_variance)/variance
    return chi_square


def confidence_interval_variance(n, sample_variance, chi_2_r, chi_2_l, std_dev):
    variance_left_point = ((n-1)*sample_variance)/chi_2_r
    variance_right_point = ((n-1)*sample_variance)/chi_2_l
    std_dev_left_point = math.sqrt(((n-1)*sample_variance)/chi_2_r)
    std_dev_right_point = math.sqrt(((n-1)*sample_variance)/chi_2_l)

    print("Variance")
    print("{} < {} < {}".format(variance_left_point, std_dev, variance_right_point))
    print("Standar Deviation")
    print("{} < {} < {}".format(std_dev_left_point, std_dev, std_dev_right_point))
