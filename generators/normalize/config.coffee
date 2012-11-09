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
          'test/vendor/scripts/modernizr.js'
        ]
    
    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(app|vendor)/
        'test/stylesheets/test.css': /^test/
      order:
        before: ['vendor/styles/common/normalize.css']
        after: ['vendor/styles/common/helpers.css']
    
    templates:
      joinTo: 'javascripts/app.js'