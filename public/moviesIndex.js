/* global axios */
axios.get("https://still-gorge-86047.herokuapp.com/").then(function(response) {
  var movies = response.data;
  console.log(movies);
});