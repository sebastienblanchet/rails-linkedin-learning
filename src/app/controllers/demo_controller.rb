class DemoController < ApplicationController

  layout false

  def index
    # render('index')
  end

  def hello
    # define params variable passed to controller
    # <%= link_to("Hello with parameters", {:action => 'hello', :page => 5, :id => 20}) %>
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]

    # render('hello')
    # redirect_to(:controller => 'demo', :action => 'index')
  end

end
