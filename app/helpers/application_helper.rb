module ApplicationHelper
  def partial_stylesheet_link_tag(controller_name, action_name, disabled = true)
    if disabled == false || disabled.nil?
      if File.exist?("#{Rails.root.to_s}/app/assets/stylesheets/#{controller_name}/#{action_name}.css.scss")
        return stylesheet_link_tag "#{controller_name}/#{action_name}"
      end
    end
  end
end
