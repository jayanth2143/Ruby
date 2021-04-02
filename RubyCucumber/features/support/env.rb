require 'watir'
require 'rspec'
require 'cucumber'
require 'page-object'
require 'selenium-webdriver'
require 'launchy'

World(PageObject::PageFactory)

def launch_browser
  # browser_name = ENV['browser']
  # case browser_name
  # when 'chrome'
  #   @browser = Watir::Browser.new :chrome
  #   # driver = Selenium::WebDriver.for :chrome
  #   # driver.new
  #
  # when 'ie'
  #   @browser = Watir::Browser.new :ie
  # else
  #   log("please provide either firefox,chrome or ie but not #{browser_name}")
  #
  # end
  @browser = Watir::Browser.new :chrome
  # @browser.goto("http://www.google.com/")
  # @browser.maximize

 end