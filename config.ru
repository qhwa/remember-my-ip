require './service'
disable :run
set :env, :production

run Sinatra::Application unless ARGV.include?('--build')
