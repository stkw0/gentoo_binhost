docker buildx build --pull --build-arg="TAG_NAME=musl" -t amd64-testing-musl .
docker buildx build --pull --build-arg="TAG_NAME=systemd" --build-arg="PROFILE_NAME=default/linux/amd64/17.1/desktop/plasma/systemd" -t amd64-testing-systemd-plasma .
docker buildx build --pull --build-arg="TAG_NAME=desktop" --build-arg="PROFILE_NAME=default/linux/amd64/17.1/desktop/plasma" -t amd64-testing-plasma .
