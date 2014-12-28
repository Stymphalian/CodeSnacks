function util(){}

util.prototype.isArray = function(t){
    return (t && Object.prototype.toString.call(t) === '[object Array]');
}

util.prototype.isFunction = function(t){
    return (t && Object.prototype.toString.call(t) === '[object Function]');
}

util.prototype.isString = function(t){
    return (t && Object.prototype.toString.call(t) === '[object String]');
}

util.prototype.isNumber = function(t){
    return (t && Object.prototype.toString.call(t) === '[object Number]');
}

