class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
end

class String
 def palindrome?
    a = self.gsub(/[\s\W+]/, "").downcase
    a == a.reverse
 end
end

module Enumerable
  def palindrome?
    a = self.join
    a == a.reverse
  end
end


p 'hannah'.palindrome?
p 'foo'.palindrome?
p [1,2,3,2,1].palindrome?