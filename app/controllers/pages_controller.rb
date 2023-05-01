class PagesController < ApplicationController
#---------------PAGES-------------------#


# HOME PAGE
  def home
    @rooms = Room.left_outer_joins(:reservations).where(reservations: { id: nil })
    render :home
  end



  
end
