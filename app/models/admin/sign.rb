class Admin::Sign
  include Mongoid::Document
  field :title, :type => String
  field :date, :type => String
end
