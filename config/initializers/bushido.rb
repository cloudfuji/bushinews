Bushido::Hooks.listen do |hook, data|
  puts "OMG BUSHI HOOK"
  puts hook.inspect
end

Bushido::Data.listen do |data|
  puts "OMG BUSHI DATA"
  puts data.inspect
end