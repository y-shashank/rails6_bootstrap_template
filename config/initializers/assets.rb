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
# Rails.application.config.assets.precompile += %w( 
#     _buttons.scss
#     _cards.scss
#     _charts.scss
#     _dropdown.scss
#     _error.scss
#     _footer.scss
#     _global.scss
#     _login.scss
#     _mixinx.scss
#     _navs.scss
#     _utilities.scss
#     _variables.scss
#     sb-admin-2.css
#     sb-admin-2.scss
#     navs/_global.scss
#     navs/_sidebar.scss
#     navs/topbar.scss
#     utilities/_buttons.scss
#     utilities/_cards.scss
#     utilities/_charts.scss
#     utilities/_dropdown.scss
#     utilities/_error.scss
#     utilities/_footer.scss
#     utilities/_global.scss
#     utilities/_login.scss
#     utilities/_mixins.scss
#     utilities/_navs.scss
#     utilities/_utilities.scss
#     utilities/_variables.scss
# )
