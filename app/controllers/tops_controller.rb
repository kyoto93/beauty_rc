class TopsController < ApplicationController
  def top
  end

  def new
  end

  def edit
    @top = Top.find(params[:id])
  end
end
