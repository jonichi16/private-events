class UsersController < ApplicationController
  def show
    @events = @creator.events
  end
end
