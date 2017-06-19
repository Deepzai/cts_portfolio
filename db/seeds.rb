10.times do |blog|
  Blog.create!(
    title: "My Rails #{blog}",
    body: "no."
  )
end

puts "10 blogs created."

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created."

9.times do |portfolio|
    Portfolio.create!(
      title: "Portfolio title #{portfolio}",
      body: "yes.",
      main_image: "http://via.placeholder.com/700x400",
      thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items created."