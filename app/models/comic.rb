class Comic < ActiveRecord::Base
validates_presence_of :nombre
validates_presence_of :extension
end
