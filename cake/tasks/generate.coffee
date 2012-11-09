Exec = require '../lib/exec'
commander = require 'commander'

class Generate extends Exec
  @command: './node_modules/.bin/brunch'
  @args: ['generate']

  @controller:        ({name}) => @_generate 'controller', name
  @model:             ({name}) => @_generate 'model', name
  @app:               ({name}) => @_generate 'app', name
  @stack:             ({name}) => @_generate 'stack', name
  @style:             ({name}) => @_generate 'style', name
  @template:          ({name}) => @_generate 'template', name
  @view:              ({name}) => @_generate 'view', name

  @_generate: (type, name) =>
    exec = (type, name, callback = ->) =>
      args = @args[..]
      args.push type
      args.push name
      @exec args, callback
    if name?
      name = toDash(name).trim()
      if name.length isnt 0
        exec type, name
        return
      else
        console.log 'Invalid name'
    else
      @_prompt type, (name) =>
        name = toDash(name).trim()
        if name.length isnt 0
          exec type, name, process.exit
        else
          console.log 'Invalid name'
          @_generate type

  @_prompt: (type, callback) ->
    commander.prompt "\nEnter name for #{type}: ", callback

toDash = (string) ->
  " #{string} "
    .replace(/-/g, '_')
    .replace(/[^(\w|\d|\s)]/g, '')
    .replace(/_/g, ' ')
    .replace(/[A-Z]{1,}[^A-Z]/g, (string) ->
      start = string[...string.length - 2]
      end = string[string.length - 2..]
      " #{start.toLowerCase()} #{end.toLowerCase()}"
    )
    .trim()
    .replace(/\s{1,}/g, '-')

module.exports = Generate