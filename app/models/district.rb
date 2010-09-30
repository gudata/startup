class District
  include Mongoid::Document
  field :name, :type => String

  embedded_in :town, :inverse_of => :district
  embeds_many :quarters
end


