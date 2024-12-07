```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON list
      final List<dynamic> data = jsonDecode(response.body);
      // Error: Accessing data[0] without checking if data is empty
      print(data[0]['name']); 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```