all:
	pandoc README.md -o README.pdf
	pandoc README_FR.md -o README_FR.pdf
	pandoc SOLUTIONS.md -o SOLUTIONS.pdf
	pandoc SOLUTIONS_FR.md -o SOLUTIONS_FR.pdf

clean:
	rm -f *.pdf
