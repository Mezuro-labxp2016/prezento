class MezuroConfigurationsController < ApplicationController

  def index
    @configurations = KalibroGem::Entities::Configuration.all
  end
  
  def show
  	@configuration = KalibroGem::Entities::Configuration.find(params[:id])
  end

  def new
    @configuration = MezuroConfiguration.new
  end

  def create
	@configuration = KalibroGem::Entities::Configuration.new(configuration_params)
	if @configuration.save
		redirect_to mezuro_configuration_path(@configuration.id),
		notice: 'Configuração criada com sucesso!'
	else
		render action: :new
	end
  end

  private

  def configuration_params
    params.
     require(:mezuro_configuration).
      permit(:name, :description)
  end

end

