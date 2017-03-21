# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %w(app lib config test spec features) \
#  .select{|d| Dir.exists?(d) ? d : UI.warning("Directory #{d} does not exist")}

## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"

guard 'sass', :input => 'src/assets/stylesheets', :output => 'public/stylesheets', :all_on_start => true

guard 'kemal', path: 'src', file: 'miles_cr.cr' do
  watch('src/miles_cr.cr') # watch the main kemal server
  watch(%r{src/views/.*\.slang}) # watch your views
  watch(%r{src/models/.*\.cr}) # watch your views
end
