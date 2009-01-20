package gimme { 
  
  import asx.object.merge;
  
  /**
   * @example 
   * <listing version="3.0">
   *  var waffles:Waffles = gimme.create(Waffles, { cream: true, fruit: [Banana, Strawberry] });
   * </listing>
   */
  public function create(type:Class, defaults:Object = null, overrides:Object = null, constructorArgs:Array = null):Object {
    
    var object:Object = createType(type, constructorArgs);
    var properties:Object = merge(merge({}, defaults), overrides);
    
    for (var field:String in properties) {
      object[field] = properties[field];
    }
    
    return object;
  }
}

import flash.errors.IllegalOperationError;

internal function createType(type:Class, args:Array):Object {
  
  switch (args.length) {
    case 0: { return new type(); }
    case 1: { return new type(args[0]); }
    case 2: { return new type(args[0], args[1]); }
    case 3: { return new type(args[0], args[1], args[2]); }
    case 4: { return new type(args[0], args[1], args[2], args[4]); }
    case 5: { return new type(args[0], args[1], args[2], args[4], args[5]); }
    case 6: { return new type(args[0], args[1], args[2], args[4], args[5], args[6]); }
    case 7: { return new type(args[0], args[1], args[2], args[4], args[5], args[6], args[7]); }
    case 8: { return new type(args[0], args[1], args[2], args[4], args[5], args[6], args[7], args[8]); }
    case 9: { return new type(args[0], args[1], args[2], args[4], args[5], args[6], args[7], args[8], args[9]); }
    default:{ throw new IllegalOperationError("Unable to instanciate:" + type + ", too many constructor arguments, received: " + args.join(', ')); }
  }
}