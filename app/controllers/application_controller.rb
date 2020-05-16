class ApplicationController < ActionController::Base
  
  def hello
    render html: "hello, underworld! "
  end
end
