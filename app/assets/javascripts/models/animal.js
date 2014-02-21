App.Animal = DS.Model.extend({
	name: DS.attr('string'),
	temperament: DS.attr('string'),
	diet: DS.attr('string'),
	color: DS.attr('string'),
	classification: DS.attr('string'),
	quantity_here: DS.attr('number'),

	isEndangered: function(){
		return this.get('quantity_here') < 10;
	}.property('quantity_here')
});