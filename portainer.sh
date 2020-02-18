#!sh
docker volume create portainer_data
echo -n 123456 > /tmp/portainer_password
docker run --name portainer -dit -p 9000:9000 -p 8000:8000 -v /var/run/docker.sock:/var/run/docker.sock -v /tmp:/tmp portainer/portainer:1.23.0 --admin-password-file /tmp/portainer_password
