WD = "src/Week 3 individual Justin"
DATA_FILE = $(WD)/data/raw/tiktok_watch_events.csv
PLOT1 = $(WD)/plots/Actionspread_tiktok.png
PLOT2 = $(WD)/plots/Actions_by_creators_tiktok.png
PLOT3 = $(WD)/plots/Average_watch_time.png
PLOT4 = $(WD)/plots/Total_tiktok_time.png

$(PLOT1) $(PLOT2) $(PLOT3) $(PLOT4): $(WD)/analysis.R $(DATA_FILE)
	Rscript $(WD)/analysis.R

