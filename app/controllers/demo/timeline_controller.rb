class Demo::TimelineController < ApplicationController
	layout :set_layout

	def index 
	end

	def set_layout
		"timeline"
	end
end
