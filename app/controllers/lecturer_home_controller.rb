class LecturerHomeController < ApplicationController
	before_action :authenticate_lecturer!

  def index
  end
end
