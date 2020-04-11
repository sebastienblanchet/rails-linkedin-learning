module ApplicationHelper

  # this is common function used in the form partial therefore it has accesss
  # CAN BE CALLED FROM ANYWHERE
  def error_messages_for(object)
    render(:partial => 'application/error_messages', :locals => {:object => object})
  end

end
