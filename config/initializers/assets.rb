# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Rails.application.config.assets.paths << "#{Rails.root}/app/assets/images"
# precompiles all images and image types
# Rails.application.config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
# Rails.application.config.assets.precompile += Dir.[]("app/assets/images/**/*").select {|f| File.file?(f)}.map {|p| if p.include?("app/assets/images/"); p.gsub("app/assets/images/", "");end}

# adds all files in the vendor folder
Rails.application.config.assets.precompile += Dir.[]("vendor/assets/**/*").select {|f| File.file?(f)}.map {|p| if p.include?("vendor/assets/fonts/"); p.gsub("vendor/assets/fonts/", ""); elsif p.include?("vendor/assets/javascripts/"); p.gsub("vendor/assets/javascripts/", ""); elsif p.include?("vendor/assets/stylesheets/"); p.gsub("vendor/assets/stylesheets/", ""); end}
# adds stray js files not called in application.js
Rails.application.config.assets.precompile += %w(layout.js components/masonry.js components/swiper.js components/wow.js)
# Add additional assets to the asset load path
# Dir.[]("app/assets/images/**/*").each {|image_path|Rails.application.config.assets.paths << image_path}

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
