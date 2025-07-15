# frozen_string_literal: true

require 'fileutils'
require 'bootstrap'
# require 'font-awesome-sass'
require 'sassc'

# Stylesheets
bootstrap_css = "#{Bootstrap.assets_path}/stylesheets/_bootstrap.scss"
# fontawesome_css = "#{FontAwesome::Sass.assets_path}/stylesheets/_font-awesome.scss"

scss = "@import './lib/custom.scss';@import '#{bootstrap_css}';" # @import '#{fontawesome_css}';

File.write('./public/css/stylesheet.css', SassC::Engine.new(scss, style: :compressed).render)

# Fonts
font_folder = './public/webfonts/'
# fontawesome_fonts = Dir["#{FontAwesome::Sass.assets_path}/fonts/font-awesome/*"]
# fontawesome_fonts.each do |filename|
#   FileUtils.cp(filename, font_folder)
# end

# Scripts
scripts_folder = './public/js/'
bootstrap_js = "#{Bootstrap.assets_path}/javascripts/bootstrap.min.js"
FileUtils.cp(bootstrap_js, scripts_folder)
