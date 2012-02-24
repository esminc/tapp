step "I have the following code:" do |code|
  @code = code
end

step "Ruby it" do
  stdout = StringIO.new
  $stdout = stdout
  begin
    eval @code
  ensure
    $stdout = STDOUT
  end
  @output = stdout.string.chop
end

step "I should see:" do |output|
  @output.should == output
end
