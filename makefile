# This is the makefile for automation: simply just run make in the terminal

all: download_week_3_data run

download_week_3_data:
	Rscript src/week_3_individual_justin/download_week3_data.R

run:
	Rscript src/week_3_individual_justin/analysis.R


