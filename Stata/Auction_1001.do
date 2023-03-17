* Start over
clear


*** Import winning bids data

*import delimited using ~/Desktop/SpectrumLab/Auction1001/data/winning_bids.csv

*import delimited using ~/Desktop/SpectrumLab/Auction1001/data/dma_to_zipcode.csv

*import delimited using ~/Desktop/SpectrumLab/Auction1001/data/cleaned_census.csv

*import delimited using ~/Desktop/SpectrumLab/Auction1001/data/pop_zip.csv


* Primary merged dataset from bids w/ demographics

import delimited using ~/Desktop/SpectrumLab/Auction1001/data/merged_bid_data.csv

* Initial graph clearing

graph drop _all

* Graph generation

hist compensation, freq normal name(bidHist)

gr box compensation, name(bidBox)

gr combine bidBox bidHist, name(boxCombine)

* Regression models

reg compensation population age num_bidders, vce(r)

