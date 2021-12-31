# == Schema Information
#
# Table name: auctions
#
#  id         :bigint           not null, primary key
#  event_date :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Auction < ApplicationRecord
end
