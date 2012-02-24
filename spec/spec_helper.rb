RSpec.configure do |config|
  Turnip::Config.step_dirs = 'spec/steps'
  Turnip::StepLoader.load_steps
end
