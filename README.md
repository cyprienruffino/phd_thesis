# Thèse Cyprien Ruffino
Dépôt de mon manuscrit de thèse

## Compilation
### (pdf)latex
Le fichier `Manuscrit.tex` est le fichier maitre, c'est donc lui qu'il faut compiler avec (pdf|xe)latex. 

### biber
Une bibliographie globale est prévue pour le document, à compiler avec `biber`

### Makefile
Un makefile est à votre disposition pour faciliter la compilation.
`make` compile le document `make clean` nettoie le répertoire de travail (y compris le manuscrit compilé).
Il peut être nécessaire de modifier l'entrée `manuscrit` du makefile afin de faire en sorte que le manuscrit soit compilé un nombre suffisant de fois.
La variable `NAME` est a personnaliser dans le makefile.

## Template
Ce template est dérivé de celui de Dorian Depriester : http://blog.dorian-depriester.fr/latex/template-these/template-complet-pour-manuscrit-de-these

Ajusté aux normes de l'INSA Rouen par Jean-Baptiste Louvet, 2018-2019
