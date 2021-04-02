After('@close') do
  @browser.quit
end

Before() do
  launch_browser
  # step "i'm on the website homepage"
end