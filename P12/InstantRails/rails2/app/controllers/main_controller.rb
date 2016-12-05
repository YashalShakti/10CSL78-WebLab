class MainController < ApplicationController
  def search
  	@title=params[:title]
  	if @title == "" || @title == nil
  		@result = ""
	else
		@result = Bookinfo.find(:all,:conditions=>["title LIKE ?","%"+@title+"%"])
	end
  end
end