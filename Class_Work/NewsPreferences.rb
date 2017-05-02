require "observer"

class InformationObserver          ### Periodically fetch a 
  include Observable

  def initialize(symbol)
    @symbol = symbol
  end

  def run
    lastInfo = nil
    loop do
      info = Information.fetch(@symbol)
      print "Current Information: #{information}\n"
      if info != lastInfo
        changed                 # notify observers
        lastInfo = info
        notify_observers(Time.now, info)
      end
      sleep 1
    end
  end
end


class Information           ### A mock class to fetch information.
  def Information.fetch(symbol)
    #fetch information
  end
end

class Warner          ### An abstract observer of InformationObserver objects.
  def initialize(observer, limit)
    @limit = limit
    observer.add_observer(self)
  end
end


class SmsWarn < Warner
  def update(time, information)       # callback for observer
    if information < @limit
      print "--- #{time.to_s}: Information below #@limit: #{information}\n"
    end
  end
end
