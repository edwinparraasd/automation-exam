# frozen_string_literal: true

require 'byebug'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

# Page Object Classes
require_relative '../pages/home/index'
require_relative '../pages/result/river_result'

# Mail
require 'net/smtp'

# Dotenv
require 'dotenv'
Dotenv.load
