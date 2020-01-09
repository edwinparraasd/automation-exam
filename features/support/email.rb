module Mail
  def self.send_email(result_test)
    smtp = Net::SMTP.new('smtp.sendgrid.net', 587)
    smtp.enable_starttls

    message = "From: QAExamBellatrix <#{ENV['MAILER']}>\nTo: User <#{ENV['RECEIVER']}>\nSubject: Result Test ebay \n\nThe test result was: #{result_test}\n"

    smtp.start('sendgrid.net', ENV['USER_SENDGRID'], ENV['PASS_SENDGRID'], :plain) do |server|
      server.send_message message, ENV['MAILER'], ENV['RECEIVER']
    end
  end
end

World(Mail)

