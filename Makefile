





all: html


html: verfassung
	docpatch create --format html --revision 3

verfassung: grundgesetz
	docpatch -D build

grundgesetz:
	cd grundgesetz-dev; docpatch -D build
	cp grundgesetz-dev/repo/*.md src/.
