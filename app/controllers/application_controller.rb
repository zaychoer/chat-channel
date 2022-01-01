class ApplicationController < ActionController::Base
  attr_reader :channel
  alias current_channel channel

  helper_method :current_channel
end
