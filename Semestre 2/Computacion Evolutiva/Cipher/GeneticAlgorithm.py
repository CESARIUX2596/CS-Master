import random
import operator
from Individual import Individual


class GeneticAlgorithm():
    def __init__(self, target, gene_pool, crossover_rate, crossover_percentage, mutation_rate, max_individuals):
        self.target = target
        self.gene_pool = gene_pool
        self.crossover_rate = crossover_rate/100
        self.crossover_percentage = crossover_percentage/100
        self.mutation_rate = mutation_rate/100
        self.max_indiviuals = max_individuals
        self.population = []
        self.best_populations = []
        self.gen_count = 0

    # Random Mutation Function
    def mutation(self, chromosome):
        pos = random.randint(0, len(chromosome) - 1)
        mut = random.choice(self.gene_pool)
        chromosome = chromosome[:pos] + \
            mut + chromosome[pos+1:]
        return Individual(chromosome, self.target)

    def mutate_individuals(self):
        mutated_population = []
        cnt = 0
        for ind in self.population:
            cnt += 1
            prob = random.random()
            if prob > self.mutation_rate:
                mutated_population.append(ind)
            else:
                # Mutate Individual Chromosome
                ind = self.mutation(ind.chromosome)
                mutated_population.append(ind)
        # Replace population with mutated population
        self.population = mutated_population

    def generate_chromosome(self):
        chromosome_size = len(self.target)
        chromosome = ''
        for c in range(chromosome_size):
            letter = random.choices(self.gene_pool)
            chromosome += letter[0]
        return chromosome

    def generate_population(self):
        for ind in range(self.max_indiviuals):
            self.population.append(Individual(
                self.generate_chromosome(), self.target))

    # Random Crossover Function
    def crossover(self, parent1, parent2):
        offspring_chromosome = ''
        for p1_gene, p2_gene in zip(parent1.chromosome, parent2.chromosome):
            probability = random.random()
            if probability < self.crossover_rate:
                offspring_chromosome += p1_gene
            else:
                offspring_chromosome += p2_gene
        return Individual(offspring_chromosome, self.target)

    def order_population(self):
        self.population = sorted(
            self.population, key=operator.attrgetter('fitness_value'))

    def evaluate_population(self):
        self.order_population()
        self.best_populations.append(self.population[0])

    def create_new_generation(self):
        # Order population to use the best individuals
        new_offsprings = []
        off_amount = int(
            self.crossover_percentage*self.max_indiviuals)
        parrents_arr = self.population[:off_amount]
        i = 0
        while i < off_amount:
            parent1 = random.choice(parrents_arr)
            parent2 = random.choice(parrents_arr)
            offspring = self.crossover(parent1, parent2)

            new_offsprings.append(Individual(
                offspring.chromosome, self.target))

            i += 1
        # self.population = random.shuffle(self.population)
        # print(len(self.population))
        self.population = self.population[:off_amount-1]
        self.population.extend(new_offsprings)

    def execute(self):
        self.generate_population()
        self.evaluate_population()
        print(self.population[0].chromosome)
        self.create_new_generation()
        self.mutate_individuals()
        self.gen_count += 1
        found = False
        while not found:
            self.evaluate_population()
            print("Current Value:", self.population[0].chromosome,
                  "Fitnes:", self.population[0].fitness_value, )

            self.create_new_generation()
            self.mutate_individuals()
            self.gen_count += 1
            if self.population[0].fitness_value == 0:
                found = True

        print("DONE")
