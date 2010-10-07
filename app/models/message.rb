class Message
  include Mongoid::Document
  field :name, :type => String
  field :body, :type => String
  field :date, :type => Date
  field :author, :type => String
end
