module ProjectsHelper

  def notification_options
    options_for_select([
      ['None', 0],
      ['Individual', 1],
      ['Group', 2]
     ]
    )
  end

end
