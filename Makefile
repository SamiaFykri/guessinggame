# Cibles par défaut
all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\n## Date et heure de l'exécution\n" >> README.md
	date >> README.md
	echo "\n## Nombre de lignes de code dans guessinggame.sh\n" >> README.md
	wc -l < guessinggame.sh >> README.md
