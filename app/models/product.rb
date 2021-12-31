# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  min_price  :integer          default(0), not null
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  auction_id :bigint           not null
#  user_id    :bigint
#
# Indexes
#
#  index_products_on_auction_id  (auction_id)
#  index_products_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (auction_id => auctions.id)
#  fk_rails_...  (user_id => users.id)
#
class Product < ApplicationRecord
end
