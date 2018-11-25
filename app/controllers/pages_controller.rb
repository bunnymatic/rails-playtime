class PagesController < ApplicationController
  def root
    track_event("root_page", "anon", { date: Time.current })
  end
end
