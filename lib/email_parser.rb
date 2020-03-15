# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
#require 'csv'
#class EmailAddressParser
#  attr_accessor :email

  #def self.new_from_csv(csv_data)
  #  rows = csv_data.split("\n")
  #  email = rows.collect do |row|
  #  data = row.split(", ")
  #  email = data[0]
  #  email = self.new
  #  @email = email
  #  email
  #  end
  #  email
  #end
#end
class EmailAddressParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split(/, | /).uniq
  end
end
