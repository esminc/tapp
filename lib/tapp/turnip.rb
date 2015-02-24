module Tapp
  module Turnip
    module Steps
      step 'I have the following code:' do |code|
        @code = code
      end

      step 'a file named :filename with:' do |filename, code|
        @filename, @code = filename, code
      end

      step 'Ruby it' do
        stdout = StringIO.new
        $stdout = stdout

        begin
          if @filename
            eval @code, binding, @filename, 1
          else
            eval @code
          end
        ensure
          $stdout = STDOUT
        end

        @output = stdout.string.gsub(/\e\[0.*?m/, '').chop
      end

      step 'I should see:' do |output|
        @output.should == output
      end
    end
  end
end
