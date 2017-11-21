require "json"

repo = JSON.parse(open("naught.json").read)

require "pp"

pp repo

pretty = repo.prett_inspect
pretty
