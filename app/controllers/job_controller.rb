class JobController < ApplicationController
  def search
    @results = Cb.job_search_criteria.keywords(params[:qry]).search()
  end

  def details
    @job = Cb.job.find_by_did params[:did]
  end
end
