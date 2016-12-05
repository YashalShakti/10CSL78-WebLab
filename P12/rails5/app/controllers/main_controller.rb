class MainController < ApplicationController
  def search
  	@title=params[:title]
  	if @title == "" || @title == nil
  		@result = ""
	else
		@result = Bookinfo.where("title like ?","%"+@title+"%")
	end
  end
end
