class Town
  include Mongoid::Document
  
  field :name #, :type => String
    
  embeds_many :districts

end
