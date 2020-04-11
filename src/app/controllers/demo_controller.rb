class DemoController < ApplicationController

  layout false

  def index
    render('hello')
  end

  def hello
    # no need for file exention
    # render(:template => 'demo/hello')
    render('index')
  end

end
