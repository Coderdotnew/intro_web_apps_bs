require_relative './spec_helper'
require_relative '../email_parser.rb'

describe "EmailParser" do

  describe '::new' do 
    it "instantiates with an email or string of multiple emails set upon initialization that can be called and redefined" do
      test1 = EmailParser.new("michael@coderdotnew.com")
      expect(test1.email).to eq("michael@coderdotnew.com")
      test1.email = "stephan@coderdotnew.com"
      expect(test1.email).to eq("stephan@coderdotnew.com")
    end
  end

  #note1: to parse is to divide a a group of items into smaller parts to analyze each part(i.e. parsing a sentence would be to divide it into words and identify each component of the sentence)
  #note2: a delimiter is a character that separates words or phrases in a text string
  #note3: a CSV file is a comma separated value file that uses spaces as a delimeter

  describe '#parse' do
    it "parses Comma Separated Values (CSV) files containing a list of emails separated by commas" do
      expect(EmailParser.new("michael@coderdotnew.com, stephan@coderdotnew.com").parse).to eq(["michael@coderdotnew.com", "stephan@coderdotnew.com"])
    end

    it "parses emails that are space delimited (separated by a space rather than a comma) " do 
      expect(EmailParser.new("michael@coderdotnew.com stephan@coderdotnew.com").parse).to eq(["michael@coderdotnew.com", "stephan@coderdotnew.com"])
    end

    it "parses both CSV and space delimited emails" do
      emails = "michael@coderdotnew.com, stephan@coderdotnew.com lebron@coderdotnew.com, stephen@coderdotnew.com"
      expect(EmailParser.new(emails).parse).to eq(["michael@coderdotnew.com", "stephan@coderdotnew.com", "lebron@coderdotnew.com", "stephen@coderdotnew.com"]) 
    end

    it 'parses and removes duplicate emails' do
      expect(EmailParser.new("michael@coderdotnew.com, michael@coderdotnew.com").parse).to eq(["michael@coderdotnew.com"])
    end
  end
  
end