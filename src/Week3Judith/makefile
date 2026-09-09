all: output/analysis_done.txt

raw/impressions.csv: download_data.R
	Rscript download_data.R

output/analysis_done.txt: analysis.R raw/impressions.csv
	Rscript analysis.R
	touch output/analysis_done.txt

clean:
	rm -rf raw output