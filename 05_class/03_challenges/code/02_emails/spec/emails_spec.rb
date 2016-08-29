require_relative './spec_helper'
require_relative '../emails.rb'

describe "firstname_from_email" do
  coderdotnew_emails = ["michael@coderdotnew.com", "stephan@coderdotnew.com", "natalie@coderdotnew.com"]
  it 'returns an array of first names that comes before the @ symbol for each email in the coderdotnew array' do
    expect(firstname_from_email(coderdotnew_emails)).to eq(["Michael", "Stephan", "Natalie"])
  end
end

describe "fullname_from_email" do
  google_emails = ["sergey.brin@gmail.com", "larry.page@gmail.com", "sundar.pichai@gmail.com"]
  it 'returns an array of full names that comes before the @ symbol for each email in the google array' do
    expect(fullname_from_email(google_emails)).to eq(["Sergey Brin", "Larry Page", "Sundar Pichai"])
  end
end