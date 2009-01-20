package gimme { 

  import flash.display.Sprite;
  import org.hamcrest.*;
  import spectacular.dsl.*;
  
  public function GimmeSpecs():void {
    describe('gimme', function():void {
      it('is a tiny library');
      it('that makes things for you');
      
      describe('gimme.a', function():void {
        it('is an alias of create');
      });
      
      describe('gimme.an', function():void {
        it('is an alias of create');
      });
      
      describe('gimme.create', function():void {
        describe('gimme.create(type:Class)', function():void {
          it('creates a new instance of type', function():void {
            assertThat(gimme.create(Sprite), instanceOf(Sprite));
          });
          it('explodes if you forget to pass in required constructor arguments', function():void {
            
          });
        });
        describe('gimme.create(type:Class, constructorArgs:Array)', function():void {
          it('creates a new instance of type with constructor arguments', function():void {
            
          });
          it('works for up to 10 constructor arguments', function():void {
            
          });
        });
        describe('gimme.create(type:Class, properties:Object)', function():void {
          it('creates a new instance of type, and then assigns values from properties', function():void {
            
          });
          it('works for typed objects too', function():void {
            
          });
        });
        describe('gimme.create(type:Class, constructorArgs:Array, properties:Object)', function():void {
          
        });
      });
      
      describe('gimme.some', function():void {
        describe('gimme.some(n:int, type:Class)', function():void {
          
        });
        describe('gimme.some(n:int, type:Class, constructorArgs:Array)', function():void {
          
        });
        describe('gimme.some(n:int, type:Class, properties:Object)', function():void {
          
        });
        describe('gimme.some(n:int, type:Class, iterator:Function)', function():void {
          
        });
        describe('gimme.some(n:int, type:Class, constructorArgs:Array, properties:Object, iterator:Function)', function():void {
          
        });
      });
      
      describe('gimme.like', function():void {
        it('takes an examplar');
        it('gives you back n instances');
        it('after fuzzing the values automatically');
        it('or upon your wishes');
        
        describe('gimme.like(n:int, instanceOrClass:Object, propertiesToFuzz:Object)', function():void {
          
        });
        
        it('has a dodgy example', function():void {
          var drink:Tequila = new Tequila();
          drink.size = 'shot'; 
          drink.lemon = true;
          drink.salt = false;

          var drinks:Array = gimme.like(4, drink, { size: ['shot', 'jug'] });
        });
      });
    });
  } 
}
