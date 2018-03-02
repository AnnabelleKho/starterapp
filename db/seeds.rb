# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless GigType.all.any?
  gig_type = [
    {icon: 'laptop', name:'Web design', description:'Build or update your website', color:'info' },
    {icon: 'chart-line', name:'SEO', description:'Help optimise your site for search engines', color:'info' },
    {icon: 'facebook-share', name:'Digital Marketing', description:'Help you conquer the social media landscape', color:'info' },
    {icon: 'paint-brush', name:'Graphic design', description:'Create a logo or style guide', color:'info' }
  ]

  gig_type.each do |gt|
    type = GigType.create(icon: gt[:icon], name: gt[:name], description: gt[:description], color: gt[:color])
    puts "Gig type created: " + type.name

end
end

user = User.create(email: 'admin@example.com', password: '12345678', user_type: 'admin')
puts "Admin user created:" + user.email
