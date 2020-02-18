#!/bin/bash
docker run -ti --rm fluent/fluent-bit:1.3 /fluent-bit/bin/fluent-bit -i cpu -o stdout -f 1
docker run -ti --rm -p 3000:3000 fluent/fluent-bit:1.3 /fluent-bit/bin/fluent-bit -i tcp://0.0.0.0:3000 -o stdout -f 1

docker run -ti --rm fluent/fluent-bit:1.3 /fluent-bit/bin/fluent-bit -i stdin -o stdout -f 1
