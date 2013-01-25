(1..411).each do |i|
  begin
    require "euler/problem_#{i}"
  rescue LoadError
  end
end
