$ ->

  # to set summernote object
  # You should change '#course_corps' to your textarea input id
  summer_note = $('#course_corps')

  # to call summernote editor
  summer_note.summernote
    # to set options
    height:300  

  # to set code for summernote
  summer_note.code summer_note.val()

  # to get code for summernote
  summer_note.closest('form').submit ->
    # alert $('#course_corps').code()[0]
    summer_note.val summer_note.code()[0]
    true