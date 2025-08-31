#!/usr/bin/env bash

docker build -t sb2nov/latex .
docker run --rm -i -v "$PWD":/data sb2nov/latex pdflatex brandon_high_resume.tex
docker run --rm -i -v "$PWD":/data sb2nov/latex pdflatex brandon_high_resume_extended.tex
