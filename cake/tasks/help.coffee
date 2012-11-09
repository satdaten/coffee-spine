class Help
  @npm: ->
    tasks = require '../tasks'
    console.log """
    
    There are two ways to run tasks. You can use the cake command if you have CoffeeScript installed. (see http://coffeescript.org/) You can also use npm to execute commands:

      npm run-script [command]

    Generator commands (gen:) will require a prompt. Command list:

    """

    maxCommandLength = 20
    printTasks = (taskObject) ->
      return unless typeof taskObject is 'object'
      if taskObject.command? and taskObject.description? and taskObject.task?
        command = taskObject.command
        command+= Array(maxCommandLength - command.length).join ' '
        console.log "#{command} # #{taskObject.description}"
      else
        for key, value of taskObject
          printTasks value unless key is 'npm'
    printTasks tasks

module.exports = Help