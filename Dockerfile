# docker build -t galgo .
# docker run -it --rm --name galgo galgo

FROM gcc:latest

COPY src /usr/src/galgo
WORKDIR /usr/src/galgo
RUN g++ -fopenmp -std=c++11 -O3 -Wall example.cpp -o run
CMD ["./run"]
