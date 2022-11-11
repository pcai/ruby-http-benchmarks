

def profile(name)
  memory_before = `ps -p #{Process::pid} -o rss`.split("\n")[1].chomp.to_i
  result = yield
  memory_after = `ps -p #{Process::pid} -o rss`.split("\n")[1].chomp.to_i

  total_memory = memory_after - memory_before
  puts "#{name}: #{"%.2f" % (total_memory.to_f / 1024)} MB"

  result
end

GC.disable
