exports.config =
  paths:
    public: 'build/web'

  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
        'test/javascripts/tests.js': /^test(\/|\\)tests/
        'test/javascripts/test-vendor.js': /^test(\/|\\)vendor/
      order:
        before: [
          'vendor/scripts/common/console-helper.js'
          'vendor/scripts/common/jquery.js'
          'vendor/scripts/spine/spine.coffee'
          'vendor/scripts/bootstrap/bootstrap-tooltip.js'
          'test/vendor/scripts/modernizr.js'
        ]
    
    stylesheets:
      joinTo:
        'stylesheets/app.css': (filename) ->
          return false unless /^(app|vendor)/.test filename
          return true if /(bootstrap|responsive).less$/.test filename
          return not /bootstrap/.test filename
        'test/stylesheets/test.css': /^test/
      order:
        before: ['app/styles/bootstrap/bootstrap.less']
        after: ['app/styles/bootstrap/responsive.less']
        
    templates:
      joinTo: 'javascripts/app.js'