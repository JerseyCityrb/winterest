class PinsController < ApplicationController
	def index
		@pins = Pin.all
	end

	def new
		@pin = Pin.new
	end

	def create
		@pin = Pin.new(pin_params)

		if @pin.save
			redirect_to root_path
		else
			render "this was an error!"
			redirect_to new_pin_path
		end
	end

	private

	def pin_params
		params.require(:pin).permit(:title, :description, :source)
	end

end
