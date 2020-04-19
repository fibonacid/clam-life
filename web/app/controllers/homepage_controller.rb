class HomepageController < ApplicationController
  def show
    @releases = B.get_components("release").includes(repeaters: [:texts, :images])
  end

  def intro
  end
end
