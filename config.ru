require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use PostCard
use CardController
use LoginController
use NewCardController
use UsersController
use RulesController
run ApplicationController
