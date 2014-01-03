require 'riemann/client'

# Create a client. Host, port and timeout are optional.
c = Riemann::Client.new host: 'localhost', port: 5555, timeout: 5

# Send some conversions
c << {service: 'app', metric: 300, tags: ['conversion'], host: "a"}
c << {service: 'app', metric: 160, tags: ['conversion'], host: "b"}

