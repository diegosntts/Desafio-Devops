# Instalação Docker
https://docs.docker.com/get-docker/
# Instalaçao do docker-compose
https://docs.docker.com/compose/gettingstarted/
# Clonar este repositório
git clone https://github.com/diegosntts/Desafio-Devops
# Caminho para criar as variaveis no action secrets do github 
### Acesse settings > secrets > actions
## Criar variaveis e adicionar os seus valores
### DOCKER_PASSWORD
### DOCKER_USERNAME
# Executar e contruir imagem docker
### `docker-compose up --build`
# Executar apos o comando acima
### `docker-compose exec app python manage.py migrate `
# Acessar aplicação através do navegador
### `http://localhost:80`
# Para visualizar o arquivo de deploy é necessario acessar a página do github
### `https://github.com/diegosntts/Desafio-Devops/actions`


