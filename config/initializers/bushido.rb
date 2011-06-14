Bushido::Envs.listen do |hook, data|
  puts "OMG BUSHI Envs"
  puts hook.inspect
end

Bushido::Data.listen do |data, hook|
  b = Bushidomessage.new
  b.data = data
  b.save
end