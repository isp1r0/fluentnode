Object.defineProperty Object.prototype, 'console_log', 
    enumerable  : false,  
    writable    : true,     
    value: ->
        value = @.toString()    # Dinis: I'm still not sure why this is needed
        console.log(value)
        return value

Object.defineProperty String.prototype, 'log', 
    enumerable  : false,  
    writable    : true,     
    value: Object::console_log
   
Object.defineProperty Object.prototype, '_log', 
    enumerable  : false,  
    writable    : true,     
    value: Object::console_log   
    
    
#Object::console_log = ->
#                            value = @.toString()    # Dinis: I'm still not sure why this is needed
#                            console.log(value)
#                            return value

#Object::log         = Object::console_log