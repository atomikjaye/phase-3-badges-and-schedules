# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  speakers.map{ |person| badge_maker(person)}
end

def assign_rooms(speakers)
  speakers.map.with_index do |person, index|
    "Hello, #{person}! You'll be assigned to room #{index + 1}!"
  end
end

def printer(speakers)
  batch_badge_creator(speakers).each{ |speaker_badge| puts speaker_badge}
  assign_rooms(speakers).each{ |room| puts room}
end