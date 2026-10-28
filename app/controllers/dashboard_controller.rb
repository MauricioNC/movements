class DashboardController < ApplicationController
  def index
    @movements = Movement.order(start_date: :asc).limit(10)
    pp @movements
  end
end
