require "minitest/autorun"

class StatusTest < Minitest::Test
  def setup
    @status = Status.new
    @status.content = File.read(File.new("#{Rails.root}/test/fixtures/status_value.txt"))
  end

  def test_process_info
    process_info = @status.process_info
    assert_equal(30, process_info.length)
    assert_equal(["3108", "1875", "0", "451M"], process_info.first.values)
  end
end
