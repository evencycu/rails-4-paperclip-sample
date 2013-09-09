class User < ActiveRecord::Base
  has_attached_file :avatar,
    :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :default_url => "/images/:style/missing.png"
end
