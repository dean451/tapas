require "stringio"
#
# def capture_output
#   fake_stdout = StringIO.new
#   old_stdout = $stdout
#   $stdout = fake_stdout
#   yield
# ensure
#   $stdout = old_stdout
#   return fake_stdout.string
# end

def capture_output
  old_stdout = STDOUT.clone
  pipe_r, pipe_w = IO.pipe
  pipe_r.sync = true
  output = ""
  reader = Thread.new do
    begin
      loop  do
        output  << pipe_r.readpartial(1024)
      end
    rescue EOFError
    end
  end
  STDOUT.reopen(pipe_w)
  yield
ensure
  STDOUT.reopen(old_stdout)
  pipe_w.close
  reader.join
  return output

end




output = capture_output do
  $stdout.puts "this goes to standard out"
  STDOUT.puts "this bypasses capture"
  system 'echo "output from subprocess"'
end


output.split("\n")
p output

$stderr.puts "this goes to standard error"
