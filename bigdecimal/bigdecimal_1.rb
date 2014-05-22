require "bigdecimal"

decimals = [BigDecimal("1.0")]
5.times {decimals << decimals.last / 2}
puts decimals


