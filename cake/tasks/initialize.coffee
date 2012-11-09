Add = require './add'
Generate = require './generate'

class Initialize
  @default: =>
    do @_default
    do Add.normalize

  @mobile: =>
    do @_default
    do Add.mobile
    do Add.normalize

  @bootstrap: =>
    do @_default
    do Add.bootstrap

  @mobilestrap: =>
    do @_default
    do Add.mobile
    do Add.bootstrap

  @_default: ->
    Generate.app name: 'index'

module.exports = Initialize