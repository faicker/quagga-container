quagga docker image with watchquagga.

based on jessie(debian 8) from official repo.

## usage

docker run -it -d --privileged --init --rm -v `pwd`/quagga.example:/etc/quagga faicker/quagga
