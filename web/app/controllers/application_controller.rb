class ApplicationController < ActionController::Base
  include ::Binda::MaintenanceHelpers

  before_action :set_variables

  def set_variables
    @dashboard = B.get_boards('dashboard').includes(:images).first;
    @contacts = B.get_boards('contacts').first;
  end
end
