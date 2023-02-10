class PeepModel
  attr_accessor :id, :title, :content, :time_created, :user_id  

  def initialize(title, content, time_created, user_id)
    @title = title
    @content = content
    @time_created = time_created
    @user_id = user_id
  end
end
