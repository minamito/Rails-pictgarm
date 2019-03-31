class Comment < ApplicationRecord
  #コメントが空かチェック

  belongs_to :user

  belongs_to  :topic
end
