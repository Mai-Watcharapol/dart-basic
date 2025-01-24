
class Result {
  final int id;
  final bool isSuccess;
  final String warn;

  Result(this.id, this.isSuccess, this.warn);

}

void main() {

  var data = Result(1, false, "aaaa");

  print(data);
  print("id: ${data.id}");
  print("Status: ${data.isSuccess}");
  print("warning: ${data.warn}");

}