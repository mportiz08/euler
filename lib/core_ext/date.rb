require 'date'

class Date
  unless method_defined?(:sunday?)
    def sunday?
      self.strftime('%A').downcase =~ /sunday/
    end
  end
end
