# Populate the database with a small set of realistic sample data so that as a developer/designer, you can use the
# application without having to create a bunch of stuff or pull down production data.
#
# After running db:sample_data, a developer/designer should be able to fire up the app, sign in, browse data and see
# examples of practically anything (interesting) that can happen in the system.
#
# It's a good idea to build this up along with the features; when you build a feature, make sure you can easily demo it
# after running db:sample_data.
#
# Data that is required by the application across all environments (i.e. reference data) should _not_ be included here.
# That belongs in seeds.rb instead.
#
#


people_names = %w(Archie Veronica Cheryl Reggie Jugghead Nancy Cathy)
toy_names = %w(jacks marbles armyman barbie hula-hoop ball frisbee)
company_names = %w(Uber Ripple IsoFund SuperDuper)

puts "Creating people..."
people = people_names.map do |name|
  Person.find_or_create_by(name: name)
end

puts "Creating toys"
toys = toy_names.map do |name|
  Toy.find_or_create_by(name: name)
end

puts "Creating companies"
companies = company_names.map do |name|
  Company.find_or_create_by(name: name)
end

puts "Associating toys..."
toys.sample(5).each do |toy|
  people.sample(5).each do |person|
    person.toys << toy
  end
end

puts "Associating fund companies"
companies.sample(3).each do |company|
  company.companies_in_fund = companies.sample(3) - [company]
end
