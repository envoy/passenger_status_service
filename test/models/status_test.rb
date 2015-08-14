# == Schema Information
#
# Table name: statuses
#
#  id         :integer          not null, primary key
#  content    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  host_id    :integer          not null
#
# Indexes
#
#  index_statuses_on_host_id_and_updated_at  (host_id,updated_at)
#

require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
