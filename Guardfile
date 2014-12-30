# More info at https://github.com/guard/guard#readme

guard 'rubocop' do
  watch(%r{attributes/.+\.rb$})
  watch(%r{libraries/.+\.rb$})
  watch(%r{recipes/.+\.rb$})
  watch('metadata.rb')
end

# ChefSpec tests
guard :rspec, cmd: 'chef exec /opt/chefdk/embedded/bin/rspec',
              all_on_start: false, notification: false do
  watch(%r{^libraries/(.+)\.rb$})
  watch(/^spec\/(.+)_spec\.rb$/)
  watch(/^(recipes)\/(.+)\.rb$/) { |m| "spec/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb') { 'spec' }
end
