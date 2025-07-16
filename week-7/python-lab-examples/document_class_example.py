# Create the Document class
class Document:
    # Add constructor
    def __init__(self, name):
        self.name = name
    # Add a path method, which returns the path
    def path(self, path):
        return path
    def save(self, path, extention):
        return self.path(path) + self.name + extention

    # Add the str method that returns
    def __str__(self):
        return "This is a Document"


class PDF(Document):
    def __init__(self, name):
        # complete the constructor
        super().__init__(name)

    # Override the save method
    def save(self, path):
        return self.path(path) + self.name + ".pdf"

    # Override the str method
    def __str__(self):
        return "This is a PDF Document"

class TEXT(Document):
    def __init__(self, name):
        # complete the constructor
        super().__init__(name)

    # Override the save method
    def save(self, path):
        return self.path(path) + self.name + ".txt"

    # Override the str method
    def __str__(self):
        return "This is a Text Document"


pdf = PDF(name="slides-show")
txt = TEXT(name="slides-content")

print(txt, txt.save("/home/txt/"))
print(pdf, pdf.save("/home/pdf/"))