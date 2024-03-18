This is a [PostgreSQL](https://hub.docker.com/_/postgres) Data Base launched with Docker [`Docker`](https://www.docker.com) and [`Docker Compose`](https://docs.docker.com/compose/).

## Requirements

1.- Docker & Docker Compose

## Getting Started

1.- First, create a `pg_hba.conf` and a `postgresql.conf` in the config folder (from the templates).

2.- Create a `.env` file from the template.

3.- If it's the first time, add execution permission to the `build_docker.sh` and `build_docker-compose.sh`scripts:

```bash
chmod +x *.sh
```

4.- Build the project using Docker:

```bash
.
./build_docker.sh
```

or Docker Compose:

```bash
.
./build_docker-compose.sh
```

5.- Run the project using Docker:

```bash
./run_docker.sh
```