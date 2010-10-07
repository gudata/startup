class Town
  include Mongoid::Document
  
  field :name
  field :main_city, :type => Boolean
  
  embeds_many :districts

end
