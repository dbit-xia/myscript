#!/bin/bash
docker run -d  --name gitlab -p 8443:443 -p 8001:80 -p 2200:22 -v /home/dbit/gitlab/config:/etc/gitlab -v /home/dbit/gitlab/logs:/var/log/gitlab -v /home/dbit/gitlab/data:/var/opt/gitlab gitlab/gitlab-ce

docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password
