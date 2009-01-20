package gimme { 
  
  /**
   * @example
   * <listing version="3.0">
   *  // type only
   *  
   *  // type and properties
   *  
   *  // type and constructor args
   *  
   *  // type and constructor args and properties
   *  
   *  // type and iterator
   *  
   *  // type and constructor args and properties and iterator
   *  
   *  // as long as there is:
   *  // - 1 int / Number (will be rounded)
   *  // - 1 Class
   *  // - 0 or 1 Array of constructor args
   *  // - 0 or 1 Object of properties, could be anything except another Class
   *  // - 0 or 1 iterator
   *  
   *  var drinks:Array = gimme.some(4, Tequila, { lemon: true, salt: true });
   * </listing>
   */
  public function some(n:int, type:Class, ):Array {
    
    /*var type:Class = (detect(rest, isA(Class))) as Class;
    var count:Number = (detect(rest, isA(Number))) as Number;
    var constructorArgs:Array = (detect(rest, isA(Array))) as Array;
    var properties:Object = (detect(rest))*/
    
    return [];
  } 
}


