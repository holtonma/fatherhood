class HomeController < ApplicationController
  
  def index
    @months = ["January", "February", "March", "April", "May", "June"]
    @this_month = Time.now.strftime("%B").to_s
  end
  
end
