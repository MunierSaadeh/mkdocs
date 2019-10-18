# Dockerfile for mkdocs project 'localDocs'

# Base image
FROM ubuntu:latest

# Update package manager and install mkdocs
RUN sudo apt-get update && sudo apt-get upgrade \
    && sudo apt-get install mkdocs

# Copy config file and index pages to container from local machine
COPY /localDocs/mkdocs.yml ~/localDocs/mkdocs.yml
COPY /localDocs/docs/index.md ~/localDocs/docs/index.md
COPY /localDocs/docs/index2.md ~/localDocs/docs/index2.md
COPY /localDocs/docs/index3.md ~/localDocs/docs/index3.md

# change into the mkdocs directory and launch local server
CMD ["cd", "~/localDocs"] 
CMD ["mkdocs", "serve"] 

# Make available the port I have mkdocs hosting on
EXPOSE 40000
