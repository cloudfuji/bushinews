Bushido::Envs.listen do |hook, data|
  puts "OMG BUSHI Envs"
  puts hook.inspect
end

Bushido::Data.listen do |data|
  puts "OMG BUSHI DATA"
  puts data.inspect
end