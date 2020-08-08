# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser

attr_accessor :email_addresses

def initialize(email_addresses)
  @email_addresses = email_addresses
end

def parse
  formatted_string = @email_addresses.gsub(", ", "*")
  formatted_string.gsub!(" ", "*")
  string_to_array = formatted_string.split("*")
  formatted_string = string_to_array.join(", ")
  binding.pry
end

end
