# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('input, textarea').each ->
    if !$(this).attr('value')
      $(this).css('opacity': '0')

  $('input, textarea').focusin ->
    if $(this).val().length == 0
      $(this).css('opacity': '1.0')
  $('input, textarea').focusout ->
    if $(this).val().length == 0
      $(this).css('opacity': '0.0')

