# Load the rails application
require File.expand_path('../application', __FILE__)

require 'Cb'

Cb.configure do | c |
  #c.use_json 	= true                  ########################################################
  c.dev_key  	= 'WDHH6P96RQD9FSDCZ0G7'  # CB Ruby API key for unit tests
  c.time_out 	= 5					 	            # Register for your own key at http://api.careerbuilder.com/
end

# Initialize the rails application
RubyCbApiDemo::Application.initialize!
