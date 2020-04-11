class DemoController < ApplicationController

  layout false

  def index
    # render('index')
  end

  def hello
    # this is an instance variable ==> accessible in the view
    @array = [1,2,3,4,5]
    # render('hello')
    # redirect_to(:controller => 'demo', :action => 'index')
  end

end
