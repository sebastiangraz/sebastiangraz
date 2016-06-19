Plugin = require './plugins/Person'
jQ     = require 'jquery-browserify'
Smooth     = require 'smoothstate'

Person = new Plugin 'Tor Morten'

jQ(document).ready ($) ->
  $('.container').on 'click', '.item', ->
    Person.win()

jQ ->
  'use strict'
  $page = undefined
  options = undefined
  smoothState = undefined
  loadingClass = 'is-loading'
  $page = $('#main')
  options =
    debug: true
    prefetch: true
    cacheLength: 2
    onStart:
      duration: 400
      render: ($container) ->
        $container.addClass 'is-exiting'
        smoothState.restartCSSAnimations()
        console.log 'onStart'
        return
    onReady:
      duration: 0
      render: ($container, $newContent) ->
        $container.removeClass 'is-exiting'
        $('html, body').animate({ scrollTop: 0 }, 0);
        $container.html $newContent
        console.log 'onReady'
        return
  smoothState = $page.smoothState(options).data('smoothState')
  return
