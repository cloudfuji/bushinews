Bushido::Envs.listen do |hook, data|
  puts "OMG BUSHI Envs"
  puts hook.inspect
end

Bushido::Data.listen do |hook, data|
  puts "OMG BUSHI DATA"
  puts hook.inspect
  puts data.inspect
end