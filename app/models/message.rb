class Message < ActiveRecord::Base
    # 名前は必須入力かつ２０文字いない
    validates :name , length: { maximum: 20 } , presence: true
    # 内容は必須入力かつ2文字以上３０文字以下
    validates :body , length: { minimum: 2, maximum: 30 } , presence: true
end
