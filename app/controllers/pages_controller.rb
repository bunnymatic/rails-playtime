class PagesController < ApplicationController
  before_action :set_count
  def root
  end
  def partials
  end
  def rcode5
  end
  def view_components
  end

  def set_count
    @count = params[:count]
  end

end
