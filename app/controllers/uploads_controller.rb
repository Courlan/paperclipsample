class UploadsController < ApplicationController

	def index
		@upload = Upload.new
		@files = Upload.all
	end

	def create
		@upload = Upload.new(upload_params)
	    if @upload.save
	      redirect_to root_url
	    else
	      puts "Oh NO!"
	      redirect_to root_url
	    end
	end

	private
	    def upload_params
	      params.require(:upload).permit(:attachment)
	    end
end
