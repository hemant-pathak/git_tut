smoke(mountain).
fire(kitchen) :- smoke(kitchen).
haswood(kitchen).
haswood(mountain).
iskitchen(X) :- haswood(X).
smoke(iskitchen(X)) :- iskitchen(X).
fire(X) :- smoke(iskitchen(X)).
