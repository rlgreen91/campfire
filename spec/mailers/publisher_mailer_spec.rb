require "rails_helper"

RSpec.describe PublisherMailer, type: :mailer do
  before(:each) do
    ActionMailer::Base.perform_deliveries = true
    ActionMailer::Base.deliveries = []
  end

  describe 'new_contact_email' do
    let(:company_name) { Faker::Book.publisher }
    let(:contact_name) { Faker::Name.name }
    let(:contact_email) { Faker::Internet.email }
    let(:contact_phone) { Faker::PhoneNumber.cell_phone }
    let!(:mail) do
      PublisherMailer.new_contact_email(company_name: company_name,
                                        contact_name: contact_name,
                                        contact_email: contact_email,
                                        contact_phone: contact_phone)
    end

    it 'renders the subject and company and contact info' do
      expect(mail.subject).to eql('Another Publisher Wants to Join Campfire!')
      expect(mail.body.encoded).to include(company_name)
      expect(mail.body.encoded).to include(contact_name)
      expect(mail.body.encoded).to include(contact_email)
      expect(mail.body.encoded).to include(contact_phone)
    end
  end
end
