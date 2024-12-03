```sh
git clone --depth=1 https://github.com/DefectDojo/django-DefectDojo && \
cd django-DefectDojo && \
./dc-build.sh && \
./dc-up-d.sh postgres-redis && \
cd ..

docker compose -f docker/docker-compose.yaml logs initializer | grep "Admin password:"

docker exec jenkins_container cat /var/jenkins_home/secrets/initialAdminPassword

```