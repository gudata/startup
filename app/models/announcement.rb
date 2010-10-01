class Announcement
  include Mongoid::Document
  field :title, :type => String
  field :description, :type => String
  field :author, :type => String
  field :img_url, :type => String
end
