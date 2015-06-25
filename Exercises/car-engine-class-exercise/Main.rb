require_relative("Car")
require_relative("Engine")
require_relative("RacingEngine")
require_relative("DieselEngine")


mustang = Car.new(Engine.new)
ferrari = Car.new(RacingEngine.new)
bmw = Car.new(DieselEngine.new)

mustang.run
ferrari.run
bmw.run

mustang.fail_to_run
ferrari.fail_to_run
bmw.fail_to_run