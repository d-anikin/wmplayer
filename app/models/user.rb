# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  nick       :string
#  email      :string
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
end
