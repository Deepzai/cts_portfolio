jQuery(document).on 'turbolinks:load', ->
  comments = $('#comments')
  if comments.length > 0
    App.global_chat = App.cable.subscriptions.create {
      channel: "BlogsChannel"
      blog_id: comments.data('blog-id')
    },
    connected: ->
    disconnected: ->
    received: (data) ->
      comments.append data['comment']
    send_comment: (comment, blog_id) ->
      @perform 'send_comment', comment: comment, blog_id: blog_id
  $('#new_comment').submit (e) ->
    $this = $(this)
    textarea = $this.find('#comment_content')
    if $.trim(textarea.val()).length > 1
      App.global_chat.send_comment textarea.val(),
      comments.data('blog-id')
    if textarea.val().length < 5 && textarea.val().length != 0
      textarea.val('')
      textarea.attr("placeholder", "Comment length error: Must be 5-1000 characters in length")
      textarea.focus ->
        textarea.attr("placeholder", "")
      textarea.blur ->
        textarea.attr("placeholder", "Comment length error: Must be 5-1000 characters in length")
    else 
      textarea.val('')
      textarea.removeAttr("placeholder")
    e.preventDefault()
    return false