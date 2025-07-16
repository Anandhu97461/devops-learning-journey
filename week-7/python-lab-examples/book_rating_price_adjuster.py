"""
Book and BookInfo class demo.
Includes author/chapter management and price adjustment based on rating.
- If rating increases and is >= 4 stars, price increases by 20%
- If rating decreases, price decreases by 20%
"""

class Book:
    def __init__(self, title):
        self.title = title
        self.author = None

    def add_author(self, name):
        self.author = name

    def add_chapter(self, number, title):
        # Store chapter number as string
        self.chapter_number = str(number)
        self.chapter_title = title


class BookInfo(Book):
    def __init__(self, title, price, info=False):
        super().__init__(title)
        self.info = info
        self.price = price
        self.stars = 0

    def rating(self, stars):
        try:
            if self.stars < stars and stars >= 4:
                self.price += 0.20 * self.price
            elif self.stars > stars:
                self.price -= 0.20 * self.price
            self.stars = stars
        except Exception as e:
            print("Error in rating:", e)


# Demo usage
if __name__ == "__main__":
    # Create base book
    book = Book("Two Scoops of Django")
    book.add_author("Greenfeld")
    book.add_chapter(3, "Async Views")

    # Create book info object
    book_info = BookInfo(title=book.title, price=10, info=True)
    book_info.rating(5)

    # Output
    print("Book info: ", end=" ")
    print(book_info.title, str(book_info.stars) + " stars", book_info.price, sep=", ")

    print("Book properties: ", book.__dict__)
    print("BookInfo properties: ", book_info.__dict__)
