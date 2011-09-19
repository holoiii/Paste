class TextPaste < ActiveRecord::Base

  def self.latest(limit)
    TextPaste.find(:all, :order => "created_at DESC", :limit => limit)
  end

end
