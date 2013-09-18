BUILD_SCRIPT=./build-slides.pl6
SLIDES_VROOM=slides.vroom
VROOM_FILES=$(.vroom)

all: slides

vroom: all
	vroom vroom

slides:
	$(BUILD_SCRIPT) > $(SLIDES_VROOM)

clean:
	vroom clean
	rm -f $(SLIDES_VROOM)
