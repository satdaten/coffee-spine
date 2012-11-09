Exec = require '../lib/exec'

class Test extends Exec
  @command: './node_modules/.bin/brunch'

  @terminal: (callback) =>
    args = ['test']
    @exec args, (exitCode) ->
      successful = exitCode is 0
      callback? successful

module.exports = Test