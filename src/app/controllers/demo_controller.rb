class DemoController < ApplicationController

  layout false

  def index
    # render('index')
  end

  def hello
    @array = [1,2,3,4,5]
    # ALL params are STRINGS
    @id = params['id']
    @page = params[:page]

    # render('hello')
    # redirect_to(:controller => 'demo', :action => 'index')
  end

  def about
    # Need the render option becuase route name is different from template name
    # default action name not as same as the name
    render('about_us')
  end

  def contact
    # different phone number from different countries
    # READ THE PARAMS
    if ['us', 'ca'].include?(params[:country])
      @phone = '(800) 555-6789'
    # ELSIF not ELSEIF or ELIF like python ew
    elsif params[:country] == 'uk'
      @phone = '(020) 7946 1234'
    else
      @phone = '+1 (987) 654-3210'
    end
    render('contact_us')
  end
  # really starting to see how ugly this rails shit it
end
