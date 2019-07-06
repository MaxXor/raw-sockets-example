# Raw sockets example (complete TCP handshake)

This example includes:
- complete initial TCP handshake (SYN, SYN-ACK, ACK)
- applying of custom TCP options during handshake
- basic HTTP request

## Usage

First compile by running `make` in this directory, there are no special dependencies. Be sure to have a working C compiler installed. Then use the included run-script to start the raw sockets example (root required):

```
./run.sh source-ip destination-ip destination-port
Example: ./run.sh 127.0.0.1 127.0.0.1 80
```
