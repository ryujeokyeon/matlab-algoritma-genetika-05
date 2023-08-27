clear
clc

target = 'ryujeokyeon';
besar_populasi = 10;
laju_mutasi = 0.2;
% laju mutasi berpengaruh terhadap yang termutasi

populasi = create_population(target,besar_populasi);
populasi.fitness;

% individu terbaik 
[parent1,parent2] = selection(populasi);

% crossover
[child1,child2] = crossover(parent1,parent2);

% mutasi
mutant1 = mutation(child1,laju_mutasi);
mutant2 = mutation(child2,laju_mutasi);

% hitung fitness mutant
mutant1.fitness = calculate_fitness(mutant1.gen,target);
mutant2.fitness = calculate_fitness(mutant2.gen,target);
