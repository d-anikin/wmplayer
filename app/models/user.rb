# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  uid        :string
#  first_name :string
#  last_name  :string
#  nickname   :string
#  photo      :string
#  token      :string
#  href       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  validates :uid, :first_name, :last_name, presence: true

  # @param [Hash] omniauth
  def self.authenticate!(omniauth)
    user = User.where(uid: omniauth.uid).first_or_initialize
    user.update_attributes!({
        uid: omniauth.uid,
        first_name: omniauth.info.first_name,
        last_name: omniauth.info.last_name,
        nickname: omniauth.info.nickname,
        photo: omniauth.info.image,
        token: omniauth.credentials.token,
        href: omniauth.info.urls.Vkontakte
    })
    user
  end

  def title
    [first_name, last_name].join(' ').squeeze(' ')
  end
end
