module AppAnalytics

  def track_event(event_type, user, options = {})
    Rails.logger.debug("Tracking #{event_type} #{user} #{options.inspect}")
  end

end
