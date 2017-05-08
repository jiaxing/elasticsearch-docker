# elasticsearch-docker

Dockerfiles for the [`jaysong/elasticsearch`](https://hub.docker.com/r/jaysong/elasticsearch/)
Docker Hub images.

## Feature:

- Built on top of [`docker.elastic.co/elasticsearch/elasticsearch:5.4.0`](https://github.com/elastic/elasticsearch-docker/tree/5.4).
- Removed [X-Pack](https://www.elastic.co/guide/en/x-pack/5.4/index.html).
- Created two mount points `/var/data/elasticsearch` and `/var/log/elasticsearch` owned by
  `elasticsearch:elasticsearch`. It's up to the user to use these directories (see
  `dev/esconf1/elasticsearch.yml`) and make them readable/writable to `elasticsearch` (see https://discuss.elastic.co/t/elastic-elasticsearch-docker-not-assigning-permissions-to-data-directory-on-run/65812/2).

## How-To:

### Start a single-node cluster
```
docker run --rm -p 9200:9200 jaysong/elasticsearch:5.4.0
```

### Start a two-node cluster with Docker Compose

Change into the `dev` directory.

- To start cluster, `docker-compose up -d`
- To stop the cluster, `docker-compose down`
- To destroy cluster and data, `docker-compose down -v`
