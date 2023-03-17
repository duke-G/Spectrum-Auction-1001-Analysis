* Start over
clear

* Primary merged dataset from bids w/ demographics

import delimited using ~/Desktop/SpectrumLab/Auction1001/data/merged_bid_area.csv

* Initial graph clearing

graph drop _all

* Graph generation

hist compensation, freq normal name(bidHist)

gr box compensation, name(bidBox)

gr combine bidBox bidHist, name(boxCombine)

* Regression models

reg compensation population area , r

* Broad demographic dataset by facility_id

clear

import delimited using ~/Desktop/SpectrumLab/Auction1001/data/merged_demographic.csv

reg compensation median_age percent_25yo_nohighschool percent_25yo_bachelors percent_asian_only percent_black_only percent_female percent_white_only total_population
