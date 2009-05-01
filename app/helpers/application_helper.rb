# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  # helper to determine if its appropriate to show the store menu
  def store_menu?
    return true unless %w{thank_you}.include? @current_action
    false
  end

  # Renders all the extension partials that may have been specified in the extensions
  def render_extra_partials(f)
    @extension_partials.inject("") do |extras, partial|
      extras += render :partial => partial, :locals => {:f => f}
    end
  end
  
  def flag_image(code)
    "#{code.to_s.split("-").last.downcase}.png"
  end                      

  def store_name
      Spree::Config[:store_name]
  end
  def store_title
      Spree::Config[:store_title]
  end
  def product_title
      Spree::Config[:product_title]
  end
  def section_title
      Spree::Config[:section_title]
  end
end
