# == Schema Information
#
# Table name: favorites
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer          not null
#  user_id    :integer          not null
#

class Favorite < ApplicationRecord
  belongs_to :board
  belongs_to :user
end
