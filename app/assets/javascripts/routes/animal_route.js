App.AnimalRoute = Ember.Route.extend({
	renderTemplate: function(){
		var controller = this.controllerFor('animals');
		this.render();
	}
});