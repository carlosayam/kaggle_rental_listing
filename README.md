# Kaggle Rental listing interest challenge

This repo contains a basic overview of the [Two Sigma Connect: Rental Listing Inquiries](https://www.kaggle.com/c/two-sigma-connect-rental-listing-inquiries) on Kaggle. It is presented as a python notebook (Jupyter) inside a container with a jupyter server.

## Prerequisites

- Docker & git


## Installation

- Clone this repo and build Docker image inside the folder


    $ docker build -t kaggle_rental_listing -f Dockerfile .


- Download data files from Kaggle in a `data` subfolder.


## Running

- Run the jupyter server, mounting the current folder a volume


    $ docker run -ti --rm -p 8888:8888 -v `pwd`:/home/ds/notebooks kaggle_rental_listing

The server outpt will show a secured URL to open in a browser. Copy and paste that URL and open it. Then got to `files` and open the Notebook.

