task :allmaker => :environment do
  session = ActionDispatch::Integration::Session.new(Rails.application)
  session.get '/websites/allmaker'
end
