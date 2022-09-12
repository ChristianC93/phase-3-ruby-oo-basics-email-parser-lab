# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser 
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        @email_array = @emails.split(/\s+|,\s+/) 
        @email_array.uniq
    end
end

# email_addresses = "john@doe.com, person@somewhere.org"
# parser = EmailAddressParser.new(email_addresses)

# parser.parse
# binding.pry
