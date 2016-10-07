
all: report.html eda-output.txt regression.RData

#HTML
report.html: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	cd report; Rscript -e 'library(rmarkdown); rmarkdown::render("report.Rmd", "html_document")'


#Regression Data
regression.RData: code/regression-script.R data/Advertising.csv
	Rscript code/regression-script.R

#EDA
eda-output.txt: code/eda-script.R data/Advertising.csv
	Rscript code/eda-script.R

#data download
data/Advertising.csv: 
	curl -o Advertising.csv http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv; mv Advertising.csv data/

#clean
clean:
	rm report/report.html