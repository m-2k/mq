N2O: Protocol Server 4.5 for MQTT
=================================

Features
--------

* Purpose: High Performance Relay for Protocol Federation
* Endpoints: WebSockets, MQTT, MQTT-SN, TCP, UDP, CoAP via EMQ
* Codebase: 500 LOC
* Buildtools: REBAR, MAD
* Templates: DTL, NITRO
* Hosts: Cowboy, EMQ, Mochiweb
* Error Logging: LAGER
* Samples: N2O Review Application for MQTT (1)

Special version of N2O
----------------------

N2O 4.5 MQTT is what you get when you reduce everything duplicating MQTT features.
On the other hand, N2O 4.5 MQTT is completely N2O-compatible
embeddable protocol relay.

* `n2o.erl` — N2O: Protocol Server 4.5 for MQTT
* `n2o_async.erl` — N2O Async: gen_server
* `n2o_format` — N2O Formatter: JSON, BERT
* `n2o_ftp` — N2O File: FTP
* `n2o_nitro` — N2O Nitro: PICKLE, FLUSH, DIRECT, IO, INIT
* `n2o_proto` — N2O Protocols: NITRO, FTP
* `n2o_secret` — N2O Security: HMAC AES/CBC-128

Support
-------
* [![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/synrc/n2o?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
* IRC Channel #n2o on FreeNode 24/7

Documentation
-------------

If you are new or you need to decide whether the N2O architecture
and philosophy is a fit for your project

* Official N2O Book [PDF](http://synrc.com/apps/n2o/doc/book.pdf)

Credits
-------

* Maxim Sokhatsky

OM A HUM
