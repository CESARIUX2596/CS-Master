from GeneticAlgorithm import GeneticAlgorithm
from tkinter import *
from tkinter import ttk
import string


def create_gene_pool(lowercase, uppercase, digits, punctuation):
    gene_pool = ' '
    punctuation = string.punctuation
    if lowercase:
        gene_pool += string.ascii_lowercase
    if uppercase:
        gene_pool += string.ascii_uppercase
    if digits:
        gene_pool += string.digits
    if punctuation:
        gene_pool += string.punctuation
    return gene_pool


def main():
    target = 'Im just a simple man, trying to make my way in the universe.'
    gene_pool = create_gene_pool(True, True, True, True)
    print(gene_pool)
    crossover_rate = 40
    crossover_percentage = 40
    mutation_rate = 40
    max_individuals = 150
    ga = GeneticAlgorithm(target, gene_pool, crossover_rate,
                          crossover_percentage, mutation_rate, max_individuals)
    ga.execute()
    print(ga.gen_count)


if __name__ == '__main__':
    main()
