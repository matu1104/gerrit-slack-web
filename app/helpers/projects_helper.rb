module ProjectsHelper

  def notification_options(object, field)
    options = { 'None' => 0, 'Individual' => 1, 'Group' => 2 }

    options.map do |key, option|
      label(object, field, class: 'radio-inline') do
        radio_button(object, field, option) + key
      end
    end.join.html_safe
  end
end
