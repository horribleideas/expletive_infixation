ANSI_GREEN = 32
ANSI_RED   = 31

def pass(message)
  puts_color ANSI_GREEN, "Yep, "+message
end

def fail(message)
  puts_color ANSI_RED, "Damn, "+message
end

def puts_color(color_code, message)
  puts "\e[0;#{color_code}m" << message << "\e[0m"
  true
end

def make_sure(ruby)
  eval(ruby) and pass "#{ruby}" or fail "no way #{ruby}"
rescue => e
  fail "#{ruby} went '#{e}'"
end

def no_way(ruby)
  eval(ruby) and fail "#{ruby}" or pass "no way #{ruby}"
rescue => e
  pass "#{ruby} went '#{e}'"
end
