# Sample Code and a Table

### Dockerfile

```
# Dockerfile for mkdocs project 'localDocs'

# Base image
FROM ubuntu:latest

ENV MKDOCS_HOME "localDocs"
ENV MKDOCS_PORT 40000

# Update package manager,install mkdocs, clear apt list
RUN apt-get update -qy && \
    apt-get upgrade -qy && \
    apt-get install mkdocs -qy && \
    rm -rf /var/lib/apt/lists/*

# Create the project directory
RUN mkdir -p ${MKDOCS_HOME}

# Establish a standard working directory
WORKDIR WORKDIR ${MKDOCS_HOME}

# Copy config file and index pages to container from local machine
COPY ./mkdocs.yml mkdocs.yml
COPY ./docs/index.md docs/index.md
COPY ./docs/index2.md docs/index2.md
COPY ./docs/index3.md docs/index3.md

# launch local server
CMD ["mkdocs", "serve"]

# Make available the port I have mkdocs hosting on
EXPOSE ${MKDOCS_PORT}
```

### Social Media Proficiency

| Platform  | Status     |       
|:---------:|:----------:|
| Instagram | Influencer |
| Snapchat  | Influencer |
| Facebook  | Influencer |
