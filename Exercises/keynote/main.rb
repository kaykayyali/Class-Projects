require_relative("SlidePrinter")
require_relative("DataHandler")

file = IO.read("slides.txt")

slides_array = DataHandler.new.create_slides(file)


