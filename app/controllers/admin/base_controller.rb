class Admin::BaseController < ApplicationController
  before_filter :require_user
  layout "admin", :except => [:help]
  
#  append_view_path("#{::Rails.root}/app/views/admin/nomenclature")


  protected
  # Когато искаме да фиксираме дадена релация към твърдо зададен потребител
  def merge_with_nested_attributes model_params, association, hash
    fixed_attributes = model_params["#{association}_attributes"] || []

    fixed_attributes.each do |key, value|
      if value.keys.include?("id")
        hash.keys.each do |sanitize_key|
          fixed_attributes[key].delete(sanitize_key.to_s)
        end
      else
        fixed_attributes[key] = value.merge(hash)
      end
    end

    #    logger.debug("#{fixed_attributes.inspect}")
    model_params
  end

end
