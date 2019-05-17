quagga docker image with watchquagga.

based on jessie(debian 8) from official repo.

## usage

```bash
sudo chown -R 102:106 quagga.example     # quagga:quagga
docker run -it -d --privileged --init --rm -v `pwd`/quagga.example:/etc/quagga faicker/quagga
```
