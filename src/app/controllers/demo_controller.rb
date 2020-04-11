class DemoController < ApplicationController

  layout false

  def index
    # render('index')
  end

  def hello
    # does this automatically
    # render('hello')

    # pass in controller
    # goes to routes.rb and determine
    redirect_to(:controller => 'demo', :action => 'index')
    # (:action => 'index')
    # could aslso
    # redirect_to('https://github.com')
  end

end
