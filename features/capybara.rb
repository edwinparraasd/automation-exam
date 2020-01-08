# frozen_string_literal: true

Before do
  Capybara.register_driver :chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities: caps,
      clear_local_storage: true,
      clear_session_storage: true
    )
  end

  Capybara.default_driver = :chrome
  Capybara.default_max_wait_time = 10
end
