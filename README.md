# gutils
A small package of custom utility functions

#### Installation
`remotes::install_github("hamishgibbs/gutils", dependencies = TRUE)`

#### Usage

Save a pdf and png image with identical name and filepath:

`gutils::ggsave_pdf_png(p, 'output/plot.pdf', 5, 5)`

Get the nth unique item from a dataframe column:

`gutils::col_unique(data, country, 3)`
