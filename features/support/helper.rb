module Helper
  def self.convert_price(text)
    text.match(/^COP \$(.*)/)[1].tr(' ','').to_f
  end

  def self.convert_shipping(text)
    if text.match?(/^\+COP \$(.*) por el envío/)
      text.match(/^\+COP \$(.*) por el envío/)[1].tr(' ','').to_f
    else
      0.0
    end
  end
end

World(Helper)
