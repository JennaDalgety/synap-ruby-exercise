# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'crm_exercise_data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  
  name = row['name']
  job_title = row['job_title']
  email_address = row['email_address']
  phone = row['phone']
  organization = row['organization']
  organization_phone = row['organization_phone']
  domain = row['domain']
  street = row['street']
  city = row['city']
  state = row['state']
  zip = row['zip']
  # t.save
  # puts "#{t.name}, #{t.organization} saved"
end

# puts "there are now #{Transaction.count} items in the database."