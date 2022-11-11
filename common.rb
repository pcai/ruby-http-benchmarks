require 'get_process_mem'

def profile(name)
  memory_before = GetProcessMem.new.kb
  result = yield
  memory_after = GetProcessMem.new.kb

  total_memory = memory_after - memory_before
  puts "#{name}: #{"%.2f" % (total_memory.to_f / 1024)} MB"

  result
end

GC.disable
