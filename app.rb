require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/resume_helper.rb')

get('/') do
  @jobs = Resume.all()
  erb(:index)
end

post('/job_added') do
  @employer = params.fetch('employer')
  @title = params.fetch('title')
  @description = params.fetch('description')
  @start_date = params.fetch('start_date')
  @end_date = params.fetch('end_date')

  job = Resume.new(@employer, @title, @description, @start_date, @end_date)
  job.save_data()
  erb(:success)
end
