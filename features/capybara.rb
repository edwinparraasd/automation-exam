# frozen_string_literal: true

Before do
  Capybara.register_driver :chrome do |app|
    caps = if ENV['HEADLESS'].eql?('false')
             Selenium::WebDriver::Remote::Capabilities.chrome
           else
             Selenium::WebDriver::Remote::Capabilities.chrome(
               chromeOptions: {
                 args: %w(headless disable-gpu no-sandbox)
               }
             )
           end

    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities: caps
    )
  end

  Capybara.default_driver = :chrome
  Capybara.default_max_wait_time = 10
end

After do |scenario|
  Mail.send_email(scenario.status.to_s)
end
