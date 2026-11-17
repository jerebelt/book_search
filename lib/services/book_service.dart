import 'package:book_search/models/book.dart';

class BookService {
  Future<List<Book>> fetchBooks() async {
    await Future.delayed(Duration(seconds: 2));
    return mockBooks;
  }
}

List<Book> mockBooks = [
  Book(
    id: 1,
    image: 'assets/images/book_1.png',
    title: 'Cien años de soledad',
    description: 'La historia de la familia Buendía a lo largo de siete generaciones en el pueblo ficticio de Macondo.',
    price: 25,
  ),
  Book(
    id: 2,
    image: 'assets/images/book_2.png',
    title: '1984',
    description: 'Una novela distópica sobre un régimen totalitario que vigila y controla cada aspecto de la vida.',
    price: 18,
  ),
  Book(
    id: 3,
    image: 'assets/images/book_3.png',
    title: 'El principito',
    description: 'Un cuento poético que aborda temas profundos como el sentido de la vida, la soledad y la amistad.',
    price: 15,
  ),
  Book(
    id: 4,
    image: 'assets/images/book_4.png',
    title: 'Clean Code',
    description: 'Manual de estilo para el desarrollo ágil de software y buenas prácticas de programación.',
    price: 42,
  ),
  Book(
    id: 5,
    image: 'assets/images/book_5.png',
    title: 'Dune',
    description: 'Una épica aventura de ciencia ficción ambientada en el desértico planeta Arrakis.',
    price: 30,
  ),
  Book(
    id: 6,
    image: 'assets/images/book_6.png',
    title: 'Hábitos Atómicos',
    description: 'Un método sencillo y comprobado para desarrollar buenos hábitos y eliminar los malos.',
    price: 22,
  ),
];
