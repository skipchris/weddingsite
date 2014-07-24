class PagesController < ApplicationController

  def home
    render :home, layout: 'homepage'
  end

end
