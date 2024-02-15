List<List<String>> convertToList(List<String> list) =>
    list.map((item) => item.split('|')).toList();

List<String> removeDuplicates(List<String> list) {
  var newList = [...list];
  return newList.toSet().toList();
}
