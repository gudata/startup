class Page
  include Mongoid::Document
  field :name, :type => String
  field :body, :type => String
  field :published_at, :type => String
  field :author, :type => String
end
