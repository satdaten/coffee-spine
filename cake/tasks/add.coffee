Exec = require '../lib/exec'

class Add extends Exec
  @command: './node_modules/.bin/brunch'
  @args: ['generate']

  @appcache:    => @_add 'appcache'
  @bootstrap:   => @_add 'bootstrap'
  @mobile:      => @_add 'mobile'
  @normalize:   => @_add 'normalize'

  @_add: (type) =>
    console.log @args
    args = @args[..]
    args.push type
    args.push 'ok'
    @exec args

module.exports = Add