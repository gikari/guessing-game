all : 
	echo '# Guessing game' > README.md
	echo '### Date' >> README.md
	date -u >> README.md
	echo '### Number of lines' >> README.md
	cat guessinggame.sh | wc -l >> README.md
