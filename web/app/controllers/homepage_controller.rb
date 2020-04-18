class HomepageController < ApplicationController
  def show
    @releases = B.get_components("release")
  end
end
