Given(/^user enters the google website$/) do
  # driver.get(baseUrl)
  # @browser.launch_browser
  @browser.goto("http://www.google.com/")

end

When(/^enter a "([^"]*)" in the search box$/) do |word|
  on(GoogleSearch).google_search(word)
end

Then(/^the results for the search show up$/) do
  on(GoogleSearch).validate_result

  @browser.close
end