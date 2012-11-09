Task =
  add:        require './tasks/add'
  build:      require './tasks/build'
  help:       require './tasks/help'
  generate:   require './tasks/generate'
  initialize: require './tasks/initialize'
  test:       require './tasks/test'

tasks =

  init:
    default:
      command:      'init'
      description:  'Initialize project'
      task:         Task.initialize.default
    mobile:
      command:      'init:mobile'
      description:  'Initialize mobile-ready project'
      task:         Task.initialize.mobile
    bootstrap:
      command:      'init:bootstrap'
      description:  'Initialize project with Twitter Bootstrap'
      task:         Task.initialize.bootstrap
    mobilestrap:
      command:      'init:mobilestrap'
      description:  'Initialize mobile-ready project with Twitter Bootstrap\n'
      task:         Task.initialize.mobilestrap

  add:
    appcache:
      command:      'add:appcache'
      description:  'Add HTML5 application cache to the project'
      task:         Task.add.appcache
    normalize:
      command:      'add:normalize'
      description:  'Add normalize.css and CSS helpers to project'
      task:         Task.add.normalize
    bootstrap:
      command:      'add:bootstrap'
      description:  'Add Twitter Bootstrap to project'
      task:         Task.add.bootstrap
    mobile:
      command:      'add:mobile'
      description:  'Make project mobile-ready\n'
      task:         Task.add.mobile

  gen:
    app:
      command:      'gen:app'
      description:  'Generate application page in project'
      task:         Task.generate.app
    controller:
      command:      'gen:controller'
      description:  'Generate controller in project'
      task:         Task.generate.controller
    model:
      command:      'gen:model'
      description:  'Generate model in project'
      task:         Task.generate.model
    stack:
      command:      'gen:stack'
      description:  'Generate stack in project'
      task:         Task.generate.stack
    style:
      command:      'gen:style'
      description:  'Generate style in project'
      task:         Task.generate.style
    template:
      command:      'gen:template'
      description:  'Generate template in project'
      task:         Task.generate.template
    view:
      command:      'gen:view'
      description:  'Generate view in project\n'
      task:         Task.generate.view

  build:
    dev:
      command:      'build:dev'
      description:  'Build project'
      task:         Task.build.development
    prod:
      command:      'build:prod'
      description:  'Build project minified'
      task:         Task.build.production
    watch:
      dev:
        command:      'watch:dev'
        description:  'Continuously rebuild project on changes'
        task:         Task.build.watch.development
      prod:
        command:      'watch:prod'
        description:  'Continuously rebuild project minified on changes'
        task:         Task.build.watch.production
    server:
      dev:
        command:      'server:dev'
        description:  'Continuously rebuild project on changes, and host locally'
        task:         Task.build.server.development
      prod:
        command:      'server:prod'
        description:  'Continuously rebuild project minified on changes, and host locally\n'
        task:         Task.build.server.production
  
  test:
    terminal:
      command:      'test'
      description:  'Run test tasks in terminal using jsdom\n'
      task:         Task.test.terminal

  help:
    npm:
      command:      'help:npm'
      description:  'Help for those running commands from npm'
      task:         Task.help.npm

module.exports = tasks