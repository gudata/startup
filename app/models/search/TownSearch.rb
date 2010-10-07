class TownSearch
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  def persisted?
    false
  end

  attr_accessor :name, :main_city
  def initialize(hash={})
    @name = hash[:name] || hash["name"]
    @main_city = hash[:main_city] || hash["main_city"]
  end

  def get_wheres
#    debugger
    town = Town
    town = town.where(:name => /#{@name}/i) if !@name.blank?
    town = town.where(:main_city => @main_city) if !@main_city.blank?
    town
  end

end