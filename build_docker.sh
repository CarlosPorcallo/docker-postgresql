source .env
docker container stop postgres &&
docker run -d \
    --name=postgres \
    --restart=always \
    --network=${NETWORK} \
    -p 5432:5432 \
	-e POSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
    --mount type=bind,source="$(pwd)"/wormhole,target=/wormhole \
	postgres