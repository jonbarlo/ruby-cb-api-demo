RubyCbApiDemo::Application.routes.draw do
  # home
  get "home/index"
  root :to=>"home#index"

  # job
  match "jobs", :to=>"job#search", :via=> [:get, :post], :as=> :job_search
  match "jobs/:did", :to=>"job#details#:did", :via=> :get, :as=> :job_details

  # company
  match "company/:did", :to=>"company#details#:did", :via=> :get, :as=> :company_details
end
