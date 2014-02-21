App.AnimalsRoute = Ember.Route.extend({
	model: function(){
		return App.Animal.find();
	}
});