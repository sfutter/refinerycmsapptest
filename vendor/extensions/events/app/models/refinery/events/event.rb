module Refinery
  module Events
    class Event < Refinery::Core::BaseModel
      self.table_name = 'refinery_events'

      validates :title, :presence => true, :uniqueness => true
      
      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end


