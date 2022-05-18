docker container run --rm -p 8888:8888 \
                     --user root -e NB_GID=100 \
                      -v "${HOME}/ws/jupyter:/home/jovyan"\
                     -it --name jupyter_octave jupyter_octave:1.0

