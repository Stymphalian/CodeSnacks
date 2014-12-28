// constructor
function kepler(a){}
// methods
kepler.prototype.foo = function(){}
kepler.prototype.bar = function(){}


// sub-class of kepler
function amazai(a,b){
    // call parent constructor
    kepler.call(this,a);
}
amazai.prototype = new kepler();
amazai.prototype.constructor = amazia.constructor;

amazai.prototype.foo = function(){}
amazai.prototype.baz = function(){}