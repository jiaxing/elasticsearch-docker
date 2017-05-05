# elasticsearch-docker

Dockerfiles for the [`jaysong/elasticsearch`](https://hub.docker.com/r/jaysong/elasticsearch/)
Docker Hub images.

## Feature:

- Built on top of [`docker.elastic.co/elasticsearch/elasticsearch:5.4.0`](https://github.com/elastic/elasticsearch-docker/tree/5.4)
- Removed [X-Pack](https://www.elastic.co/guide/en/x-pack/5.4/index.html)

## How-To:
```
docker run --rm -p 9200:9200 jaysong/elasticsearch:5.4.0
```
