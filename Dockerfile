FROM jupyter/base-notebook
    
LABEL Description="Jupyter Octave"
    
USER root
RUN apt-get update && \
    apt-get install -y gnuplot octave liboctave-dev octave-control build-essential && \
    apt-get clean
    
USER jovyan
RUN pip install octave_kernel && \
    export OCTAVE_EXECUTABLE=$(which octave)

