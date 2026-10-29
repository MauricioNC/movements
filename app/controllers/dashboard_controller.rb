class DashboardController < ApplicationController
  def index
    @movements = Movement.order(start_date: :asc).page(params[:page])
  end

  def filter_by
    pp params
    query_param = params[:search].to_s.strip
    filtered_movements = Movement.where("
      rfc LIKE :q OR
      name LIKE :q OR
      movement_type LIKE :q OR
      place_type LIKE :q OR
      account_type LIKE :q OR
      CAST(start_date AS TEXT) LIKE :q OR
      adscription LIKE :q OR
      budget_key LIKE :q OR
      comissioned_to LIKE :q", q: "%#{query_param}%")

      @movements = filtered_movements
      .order(start_date: :asc)
      .page(params[:page])
      .per(10)

      respond_to do |format|
        format.turbo_stream {}
      end
  end
end
