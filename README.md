## VAmPI Analyzer

#### Objetivo
O projeto tem como objetivo realizar scanners SAST (Static application security testing) utilizando o [Bandit](https://bandit.readthedocs.io/en/latest/), SCA (Software Composition Analysis) com o [Trivy](https://trivy.dev/) e a busca de credênciais vazadas no histórico do git utilizando o [GitLeaks](https://gitleaks.io/). Ao final de cada scanner, os resultados serão enviados para o [DefectDojo](https://docs.defectdojo.com/).


#### Preparação do ambiente

 1. Executar os procedimentos para inicializar o DefectDojo.

    ```sh
    git clone --depth=1 https://github.com/DefectDojo/django-DefectDojo && \
    cd django-DefectDojo && \
    ./dc-build.sh && \
    ./dc-up-d.sh postgres-redis && \
    cd ..
    ```

2. Cerca de 3 a 5 minutos depois, executar o comando abaixo para capturar a senha do administrador do DefectDojo.
    ```bash
    docker compose -f docker/docker-compose.yml logs initializer | grep "Admin password:"
    ```
3. Com a senha do administrador em mãos, realizar o login na aplicação, que será disponibilizada no endereço *http://localhost:8080/*.

docker exec jenkins_container cat /var/jenkins_home/secrets/initialAdminPassword

```