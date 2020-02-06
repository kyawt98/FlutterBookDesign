class Book{
  String title,
  author,
  price,
  image,
  description = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';

  int pages;
  double rating;

  Book(this.title, this.author, this.price, this.image,
      this.pages, this.rating);
}

final List<Book> books = [
  Book("Busy Coder\'s guide", "Android", "USD 20","images/book1.jpeg", 123,4.0 ),
  Book("Busy Coder\'s guide", "Android", "USD 20","images/book2.jpeg", 123,4.0 ),
  Book("Busy Coder\'s guide", "Android", "USD 20","images/book3.jpeg", 123,4.0 ),
  Book("Busy Coder\'s guide", "Android", "USD 20","images/book4.png", 123,4.0 ),
  Book("Busy Coder\'s guide", "Android", "USD 20","images/book5.jpeg", 123,4.0 ),
  Book("Busy Coder\'s guide", "Android", "USD 20","images/book6.jpeg", 123,4.0 ),
  Book("Busy Coder\'s guide", "Android", "USD 20","images/book7.jpeg", 123,4.0 )
];