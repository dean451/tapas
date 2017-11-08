require "stringio"

def capture_output
  fake_stdout = StringIO.new
  old_stdout = $stdout
  $stdout = fake_stdout
  yield
ensure
  $stdout = old_stdout
  return fake_stdout.string
end


output = capture_output do
  $stdout.puts "this goes to standard out"
end

p output

$stderr.puts "this goes to standar error"
