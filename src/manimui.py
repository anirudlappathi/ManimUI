from manim import *

timeline = []
# when processing timeline, clear scene and run timeline - if animation None, just add to scene, otherwise self.play(animation(obj, **parameters))

class Lines(Scene):
    def __init__(self, animation=None, animation_args={}, **kwargs):
        self.line = Line()
        self.line.color = "black"  # Default color
        self.set_line_properties(kwargs)
        self.add(self.line) # will show object on scene
        timeline.append({"object": self.line, "animation": animation, "parameters": animation_args})
    
    # what about animating by changing properties - self.line.animation(**parameters)? 
    # - you could copy this line, remove this line, change properties of copy
    def set_line_properties(self, **kwargs):
        for key, value in kwargs.items():
            setattr(self.line, key, value)
    
    def add_animation(self, animation, animation_args={}):
        # self.play(animation(obj, **parameters)) - unpacking dictionary
        timeline.append({"object": self.line, "animation": animation, "parameters": animation_args})

    def remove_line(self):
        self.remove(self.line)

