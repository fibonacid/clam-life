class HomepageController < ApplicationController
  def show
    chaotic_releases = B.get_components("release").includes(repeaters: [:texts, :images])
    @releases = chaotic_releases.sort { |a, b| getReleaseDate(a) <=> getReleaseDate(b) }
  end

  def intro
  end
end

def getReleaseDate(release)
  return Date.parse(release.get_string("release-publish-date") || release.created_at)
end
