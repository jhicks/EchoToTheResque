class EchosController < ApplicationController
  def index
    @echos = Echo.all
    @echo = Echo.new
  end

  def create
    @echo = Echo.new(params[:echo])

    if @echo.save
      redirect_to echos_path, notice: 'Echo was successfully created.'
    else
      @echos = Echo.all
      render action: "index"
    end
  end
end
