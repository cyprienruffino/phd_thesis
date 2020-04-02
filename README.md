# Template de These
Structure minimale pour rédiger un manuscrit de thèse de doctorat aux normes typographiques françaises.
Ce template est dérivé de celui de Dorian Depriester : http://blog.dorian-depriester.fr/latex/template-these/template-complet-pour-manuscrit-de-these

## Utilisation de ce template

### Pas de SAV et RTFM
Ce template a été très peu testé et son utilisation est conseillée uniquement aux personnes qui ont une connaissance correcte du LaTeX.
Celui-ci ne sera pas modifié à la demande d'utilisateurs souhaitant que leurs exigences soient respectées.
Ce template est sans service après vente : vous l'utilisez à vos risques et périls et personne ne viendra corriger votre code s'il ne compile pas, à vous de mettre les mains dans le cambouis si vous souhaitez vous en servir et le modifier.
Plus particulièrement, merci de ne pas contacter les contributeurs dans le cas où votre code ne compile pas.
Prenez le temps de Read The Fine Manual.

### Mise à jour du template
Ce template a pour vocation d'évoluer à mesure qu'il est utilisé pour la rédaction de manuscrits de thèses.
Si vous souhaitez y contribuer, vous pouvez directement le modifier sur le dépôt l'hébergeant.

## Compilation
### (pdf)latex
Le fichier `Manuscrit.tex` est le fichier maitre, c'est donc lui qu'il faut compiler avec (pdf)latex. 

### bibtex
Une bibliographie globale est prévue pour le document, à compiler avec `bibtex`

### Makefile
Un makefile est à votre disposition pour faciliter la compilation.
`make` compile le document `make clean` nettoie le répertoire de travail (y compris le manuscrit compilé).
Il peut être nécessaire de modifier l'entrée `manuscrit` du makefile afin de faire en sorte que le manuscrit soit compilé un nombre suffisant de fois.
La variable `NAME` est a personnaliser dans le makefile.

## Rédaction chapitre par chapitre
Dans le fichier ``Main.tex``, on peut utiliser la ligne suivante pour définir la liste des chapitres à compiler (ici 1, 2 et annexes) :
````latex
\includeonly{Chapitre1,Chapitre2,Annexes}
````

## Contributeurs
* Jean-Baptiste Louvet 2018-2019
