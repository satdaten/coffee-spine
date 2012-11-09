Exec = require '../lib/exec'

class Build extends Exec
  @command: './node_modules/.bin/brunch'

  @development: => @_build ['build']
  @production:  => @_build ['build'], true
  @watch:
    development:  => @_build ['watch']
    production:   => @_build ['watch'], true
  @server:
    development:  => @_build ['watch', '--server']
    production:   => @_build ['watch', '--server'], true

  @_build: (args, production = false) =>
    args.push '--minify' if production
    @exec args

module.exports = Build