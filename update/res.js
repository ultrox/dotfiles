const DCKR_COMPOSE_URL = "https://raw.githubusercontent.com/docker/compose/1.21.2/contrib/completion/zsh/_docker-compose";
const DCKR_URL = "https://raw.githubusercontent.com/docker/cli/master/contrib/completion/zsh/_docker";


exports.urlMap = {
  "_docker": {
    path: "/Users/markovujanic/target/",
    url: DCKR_URL,
    filename: "_docker"
  },
  "_docker-compose": {
    path: "/Users/markovujanic/target/",
    url:DCKR_COMPOSE_URL,
    filename: "_docker-compose"
  }
}
