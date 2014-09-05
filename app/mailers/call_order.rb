class CallOrder < ActionMailer::Base
  default from: "Support <support@voroninstudio.eu>"
  default to: 	'nazariy.papizh@gmail.com'

  def send_data(data)
    @data = data
    mail(:template_path => 'mail_templeates', :template_name => 'call_order', :subject => "Замовити дзвінок. Крузо")
  end
end
