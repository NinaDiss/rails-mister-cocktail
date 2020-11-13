class DosesController < ApplicationController
  def new
    @coctktail = Coctktail.new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
