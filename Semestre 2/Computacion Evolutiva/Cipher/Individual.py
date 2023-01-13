import random


class Individual(object):
    def __init__(self, chromosome, target):
        self.chromosome = chromosome
        self.target = target
        self.fitness_value = self.fitness()

    def fitness(self):
        fitness = len(self.target)
        for c, t in zip(self.chromosome, self.target):
            if c == t:
                fitness -= 1
        return fitness
