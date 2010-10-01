class Admin::Annon
  include Mongoid::Document
  field :title, :type => String
  field :description, :type => String
  field :author, :type => String
  field :published_at, :type => Time
  field :image_url, :type => String
end
