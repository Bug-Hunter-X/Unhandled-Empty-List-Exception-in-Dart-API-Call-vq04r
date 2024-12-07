# Unhandled Empty List Exception in Dart API Call

This repository demonstrates a common error in Dart when handling data fetched from an API:  accessing a list element without checking if the list is empty. The `bug.dart` file contains the erroneous code, while `bugSolution.dart` provides the corrected version.

The bug occurs because the code directly accesses `data[0]` without verifying that the `data` list contains any elements. If the API response is an empty list, this will throw a `RangeError`. The solution adds a check to prevent this error.

## How to reproduce the bug
1. Run the `bug.dart` file.
2. If the API returns an empty list, the program will crash with a `RangeError` exception.

## Solution
The solution involves adding a simple null or empty check before accessing the list element.