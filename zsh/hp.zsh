# Fetch from a git remote. If git fetch fails, assume it is because the git remote
# requires "heroku preauth". In that case, run heroku preauth, then re-fetch.
function hf() {
  git fetch $1
  if [[ $? != 0 ]]; then
    app=`git remote -v | grep $1 | head -n 1 | cut -d':' -f 2 | cut -d'.' -f 1`
    heroku preauth --app $app
    git fetch $1
  fi
}
