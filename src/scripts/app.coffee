Plugin = require './plugins/Person'
jQ     = require 'jquery-browserify'
Smooth     = require 'smoothstate'

Person = new Plugin 'Tor Morten'

jQ(document).ready ($) ->
	$('.container').on 'click', '.item', ->
		Person.win()

jQ ->
  'use strict'
  $page = $('#main')
  options =
    debug: true
    prefetch: true
    cacheLength: 2
    onStart:
      duration: 200
      render: ($container) ->
        # Add your CSS animation reversing class
        $container.addClass 'is-exiting'
        # Restart your animation
        smoothState.restartCSSAnimations()
        return
    onReady:
      duration: 0
      render: ($container, $newContent) ->
        # Remove your CSS animation reversing class
        $container.removeClass 'is-exiting'
        # Inject the new content
        $container.html $newContent
        return
  smoothState = $page.smoothState(options).data('smoothState')
  return
