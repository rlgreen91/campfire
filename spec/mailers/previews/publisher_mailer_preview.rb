# Preview all emails at http://localhost:3000/rails/mailers/publisher_mailer
class PublisherMailerPreview < ActionMailer::Preview
  def new_contact_email
    company_name = Faker::Book.publisher
    contact_name = Faker::Name.name
    contact_email = Faker::Internet.email
    contact_phone = Faker::PhoneNumber.cell_phone
    PublisherMailer.new_contact_email(company_name: company_name,
                                      contact_name: contact_name,
                                      contact_email: contact_email,
                                      contact_phone: contact_phone)
  end
end
