from GeneticAlgorithm import GeneticAlgorithm


def main():
    target = 'Im just a simple man, trying to make my way in the universe.'
    gene_pool = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345567890-=,.!@#$%^&*()-=<> '
    crossover_rate = 40
    crossover_percentage = 40
    mutation_rate = 40
    max_individuals = 100
    ga = GeneticAlgorithm(target, gene_pool, crossover_rate,
                          crossover_percentage, mutation_rate, max_individuals)
    ga.execute()
    print(ga.gen_count)


if __name__ == '__main__':
    main()
