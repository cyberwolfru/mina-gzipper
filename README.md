# Mina::Gzipper

    mina gzip_assets           # Compresses all .js and .css files under the assets path

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mina-gzipper', :require => false
```

And then execute:

    $ bundle


## Example deploy task
    ...
    require 'mina/gzipper'

    ...
    desc "Deploys the current version to the server."
    task :deploy => :environment do
      deploy do
        invoke :'git:clone'
        invoke :'deploy:link_shared_paths'
        invoke :'bundle:install'
        invoke :'rails:assets_precompile'

        to :launch do
          invoke :'gzip_assets'
          invoke :'unicorn:restart'
        end
      end
    end

## Contributing

1. Fork it ( https://github.com/cyberwolfru/mina-gzipper/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
