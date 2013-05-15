class Item < ActiveRecord::Base
    has_many:tweets, :dependent => :destroy
end
