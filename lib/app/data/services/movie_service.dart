import 'package:http/http.dart' as http;
import '../../data/models/movie_model.dart'; // Make sure to import your model

class MovieService {
  final String apiKey = '1e90c07d0ca896c28e5c013e2e910c6f'; // Replace with your TMDb API key

  Future<MoviePopuler> fetchPopularMovies() async {
    final response = await http.get(Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key=$apiKey'));

    if (response.statusCode == 200) {
      return moviePopulerFromJson(response.body);
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
