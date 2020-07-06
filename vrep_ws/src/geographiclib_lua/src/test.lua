require 'GeographicLib'

print(Constants.WGS84_a(), Constants.WGS84_f())
earth = Geocentric.new(Constants.WGS84_a(), Constants.WGS84_f())
ret = earth:Forward(27.99, 86.93, 8820)
print(ret.x, ret.y, ret.z)
ret = earth:Reverse(ret.x, ret.y, ret.z)
print(ret.lat, ret.lon, ret.h)

lat0 = 48 + 50/60
lon0 = 2 + 20/60
proj = LocalCartesian.new(lat0, lon0, 0, earth)
ret = proj:Forward(50.9, 1.8, 0)
print(ret.x, ret.y, ret.z)
ret = proj:Reverse(ret.x, ret.y, ret.z)
print(ret.lat, ret.lon, ret.h)
