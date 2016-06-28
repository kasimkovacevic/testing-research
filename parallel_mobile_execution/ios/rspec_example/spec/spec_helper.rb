# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.before(:all) do
    require './lib/desired_caps'
    @desired_caps = DesiredCaps.new(desired_caps)
  end
end

def desired_caps
  {
    caps: {
      platformName: "iOS",
      platformVersion: "9.3",
      deviceName: "iPhone 6",
      bundleId: "com.atlantbh.tourist-guide",
      udid: "f8352dfd0c8e98a9187009c8152e72f3a790f8ec",
      nativeInstrumentsLib: true
      },
    appium_lib: {
      debug: true,
      wait: 30,
      export_session: true,
      server_url: "http://127.0.0.1:4723/wd/hub"
    }
  }
end

