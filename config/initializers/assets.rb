# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( popper.js )
Rails.application.config.assets.precompile += %w( bootstrap-material-design.js )
Rails.application.config.assets.precompile += %w( moment.js )
Rails.application.config.assets.precompile += %w( bootstrap-datetimepicker.js )
Rails.application.config.assets.precompile += %w( nouislider.js )
Rails.application.config.assets.precompile += %w( bootstrap-tagsinput.js )
Rails.application.config.assets.precompile += %w( bootstrap-selectpicker.js )
Rails.application.config.assets.precompile += %w( jasny-bootstrap.js )
Rails.application.config.assets.precompile += %w( flexisel.js )
Rails.application.config.assets.precompile += %w( custom.js )
Rails.application.config.assets.precompile += %w( ckeditor/*)

Dir.glob("#{Rails.root}/app/**/*.js").each do |path|
  Rails.application.config.assets.precompile += %w( path )
end

Dir.glob("#{Rails.root}/app/**/*.css").each do |path|
  Rails.application.config.assets.precompile += %w( path )
end

Rails.application.config.assets.precompile += %w(images/* stylesheets/* javascripts/* config/*)
