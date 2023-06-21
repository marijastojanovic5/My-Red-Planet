module ApplicationHelper

  def is_active?(path)
    "active" if current_page?(path)
  end

  # def error_messages_classes(flash_type)
  #   binding.pry
  #   case flash_type.to_sym
  #     when :success
  #       "alert-success"
  #     when :error, :alert, :notice
  #       "alert-danger"
  #     else
  #       "alert-info"
  #   end
  # end

end
