
Before do
  Capybara.register_driver :chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'args' => ['--start-maximized', '--use-fake-ui-for-media-stream'] })
    Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps, clear_local_storage: true, clear_session_storage: true)
  end

  Capybara.default_driver = :chrome
  Capybara.default_max_wait_time = 10
  Capybara.javascript_driver = :webkit
  Capybara.page.driver.browser.manage.window.resize_to(1400, 1050)
end
