class SettingService

  attr_reader :status_list, :prices_list

  def initialize
    @status_list = ['Interne', 'Titulaire', 'Interimaire']
    @prices_list = [125, 170, 240]
  end

end
