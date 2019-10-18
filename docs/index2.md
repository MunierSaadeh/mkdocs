# Process

Below is an overview of my general approach to this exercise

## The Task

1.	Read about https://www.mkdocs.org/
2.	Create a documentation site (simple three page with images, links, table and code) using mkdocs
3.	Create a dockerfile which hosts this documentation website inside a container
4.	Share the approach and the dockerfile (along with any other scripts)

## The Approach

* `Research mkdocs` - read mkdocs.org and watched [A Video](https://www.youtube.com/watch?v=tB6QN2ljDL8)
* `Install mkdocs` - sudo apt-get update && sudo apt-get install mkdocs, play around with config file
* `Create .md` - inside /docs created three markdown pages
* `Review Docker docs` - review docker documentation as it pertains to Dockerfile
* `Draft Dockerfile` - create Dockerfile which will host these docs
    - use ENV lines to make Dockerfile modifiable without changing base image
    - COPY my mkdocs files into the image
* `Hosting in Container` - use docker build -t mkdocs-ubuntu:1.0 .
    - docker images to check that my tag is there
    - docker run -d --name=mkdocs -e 40000:40000 mkdocs-ubuntu:1.0  exposing the port in the mkdocs.yml
    - docker ps to check that it was successful
