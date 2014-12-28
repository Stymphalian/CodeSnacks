    function mixin(to,from,force){
        force = ( force === undefined) ? false : force
        for( var k in from){
            if( Object.prototype.hasOwnProperty.call(from,k)){
                if( force || !Object.prototype.hasOwnProperty.call(to,k) ){
                    to[k] = from[k];
                }
            }
        }
        return to;
    }

    function mixinUsingFunc(to,from,func){        
        for( var k in from){
            if( Object.prototype.hasOwnProperty.call(from,k)){
                to[k] = func(to,from,k);
            }
        }   
        return to;
    }

    function mixinFromExports(to,from,namedExports,force){
        if( namedExports && Object.prototype.toString.call(namedExports) == '[object Array]'){return;}
        force = (force === undefined) ? false : force        

        var i,k;
        var n = namedExports.length;
        for( i = 0; i < n ; ++i){
            k = namedExports[i];
            if( Object.prototype.hasOwnProperty.call(from,k)){
                if( force || !Object.prototype.hasOwnProperty.call(to,k) ){
                    to[k] = from[k];
                }
            }
        }   
        return to;
    }


    // example of how to use a functional mixin
    function asMixin(to){
        to.foo = function(){
            console.log("property 1");
        }
        to.bar = function(){
            console.log("property 2");
        }
        return to;
    }

    function convertToCache(func){
        var cache = {}
        func(cache);

        return function(to){
            for(k in cache){
                if( Object.prototype.hasOwnProperty.call(cache,k)){
                    to[k] = cache[k];
                }
            }
        }
    }


