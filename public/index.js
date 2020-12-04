/* global axios */

axios.get("https://still-gorge-86047.herokuapp.com/").then(function(response) {
  var actors = response.data;
  console.log(actors);
});