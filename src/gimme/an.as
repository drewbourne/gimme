package gimme { 
  
  public function an(type:Class, defaults:Object = null, overrides:Object = null, constructorArgs:Array = null):Object {
    return create(type, defaults, overrides, constructorArgs);
  } 
}
