class CompanyController < ApplicationController
  def details
    @company = Cb.company.find_by_did params[:did]
  end
end
