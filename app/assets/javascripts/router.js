App.Router.map(function() {
  this.route("home", {path: "index"});
  this.resource('animals', function(){
  	this.resource('animal', { path: ':animal_id'});
  });
});
