#= require_self
#= require ./store
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./templates
#= require_tree ./routes
#= require ./router

QuizBuzz.CurrentUserMixin = Ember.Mixin.create
  needs: ['application']
  currentUser: Ember.computed.alias('controllers.application.currentUser')

class QuizBuzz.BaseController extends Ember.Controller with QuizBuzz.CurrentUserMixin
class QuizBuzz.BaseObjectController extends Ember.ObjectController with QuizBuzz.CurrentUserMixin
class QuizBuzz.BaseArrayController extends Ember.ArrayController with QuizBuzz.CurrentUserMixin
