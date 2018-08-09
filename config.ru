$:.unshift '.'
require 'config/environment'
require "sinatra"
# require_relative "..app/controllers/application_controller.rb"
run ApplicationController

use Rack::Static, :urls => ['/css'], :root => 'public' # Rack fix allows seeing the css folder.

if defined?(ActiveRecord::Migrator) && ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending run `rake db:migrate` to resolve the issue.'
end

use LandmarksController
use FiguresController
use TitlesController
run ApplicationController
