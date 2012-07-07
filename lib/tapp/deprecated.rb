module Tapp
  module Deprecated
    def verbose=(bool)
      warn 'DEPRECATION WARNING: Tapp.verbose= is deprecated. Use Tapp.config.report_caller= instead.'

      config.report_caller = bool
    end

    def verbose
      warn 'DEPRECATION WARNING: Tapp.verbose is deprecated. Use Tapp.config.report_caller instead.'

      config.report_caller
    end
  end
end
