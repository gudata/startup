class Admin::Page
  include Mongoid::Document
  field :title, :type => String
  field :body, :type => String
  field :published_at, :type => String
  field :author, :type => String
end
