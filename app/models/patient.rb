class Patient < ApplicationRecord
  enum gender: [:mecton, :michtone]
  enum relative: [:aucun, :Pere, :Mere, :Grand_pere, :Grand_mere]
end
