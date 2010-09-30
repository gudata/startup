class Quarter
  include Mongoid::Document
  field :name, :type => String

  embedded_in :district, :inverse_of => :quarter
end
