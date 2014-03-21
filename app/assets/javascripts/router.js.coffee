# For more information see: http://emberjs.com/guides/routing/

Vanoblog.Router.map ()->
  @resource 'posts', ->
    @route 'edit',
      path: ':post_id/edit'
    @route 'new'
    @route 'show',
      path: ':post_id'