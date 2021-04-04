class PublisherMailer < ApplicationMailer

  def new_contact_email(company_name:, contact_name:, contact_email:, contact_phone: nil)
    @company_name = company_name
    @contact_name = contact_name
    @contact_email = contact_email
    @contact_phone = contact_phone
    mail(to: 'campfire_employee@example.com', 
         from: 'campfire_notifications@example.com',
         subject: 'Another Publisher Wants to Join Campfire!')
  end  
end
