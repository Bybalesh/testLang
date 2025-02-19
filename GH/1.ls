add = (a, b) ->
  a + b

console.log add 2, 3 # Выведет 5
var add;
add = function(a, b) {
  return a + b;
};
console.log(add(2, 3)); // Выведет 5
