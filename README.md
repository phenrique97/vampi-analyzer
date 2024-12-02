```sh
# Clone the project
git clone --depth=1 https://github.com/DefectDojo/django-DefectDojo
cd django-DefectDojo

# Building Docker images
./dc-build.sh

# Run the application (for other profiles besides postgres-redis see  
# https://github.com/DefectDojo/django-DefectDojo/blob/dev/readme-docs/DOCKER.md)
./dc-up-d.sh postgres-redis

# Obtain admin credentials. The initializer can take up to 3 minutes to run.
# Use docker compose logs -f initializer to track its progress.
docker compose logs initializer | grep "Admin password:"

docker exec jenkins_container cat /var/jenkins_home/secrets/initialAdminPassword
```