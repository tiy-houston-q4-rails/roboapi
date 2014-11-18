missions = 5.times.map do
  Mission.create name: [Faker::Hacker.verb, Faker::Hacker.ingverb, Faker::Hacker.noun].join(" "),
                 classified: [true, false].sample,
                 mission_date: (1..60).to_a.sample.days.ago

end

10.times do
  robot = Robot.create name: Faker::Internet.user_name,
    skills: [Faker::Hacker.verb, Faker::Hacker.verb].join(", "),
    remote_photo_url: Faker::Avatar.image("my-own-slug", "500x500")
  
  number_of_missions = (1..missions.length).to_a.sample
  missions.take(number_of_missions).each do |mission|
    robot.missions << mission
  end
end
