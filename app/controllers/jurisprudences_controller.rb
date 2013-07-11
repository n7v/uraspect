class JurisprudencesController < ApplicationController
  def index
    @jurisprudences = Jurisprudence.all
  end

  def show
    @jurisprudence = Jurisprudence.find(params[:id])
  end

end
