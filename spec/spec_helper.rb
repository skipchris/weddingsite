RSpec.configure do |config|
# The settings below are suggested to provide a good initial experience
# with RSpec, but feel free to customize to your heart's content.

  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  # Many RSpec users commonly either run the entire suite or an individual
  # file, and it's useful to allow more verbose output when running an
  # individual spec file.
  if config.files_to_run.one?
    # Use the documentation formatter for detailed output,
    # unless a formatter has already been configured
    # (e.g. via a command-line flag).
    config.default_formatter = 'doc'
  end


  # Seed global randomization in this process using the `--seed` CLI option.
  # Setting this allows you to use `--seed` to deterministically reproduce
  # test failures related to randomization by passing the same `--seed` value
  # as the one that triggered the failure.
  config.order = :random
  Kernel.srand config.seed

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect     #   - http://myronmars.to/n/dev-blog/2012/06/rspecs-new-expectation-syntax
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect #   - http://teaisaweso.me/blog/2013/05/27/rspecs-new-message-expectation-syntax/

    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended.
    mocks.verify_partial_doubles = true
  end

end
