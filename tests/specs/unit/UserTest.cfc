/**
* The base model test case will use the 'model' annotation as the instantiation path
* and then create it, prepare it for mocking and then place it in the variables scope as 'model'. It is your
* responsibility to update the model annotation instantiation path and init your model.
*/
component extends="coldbox.system.testing.BaseModelTest" model="models.User"{
	
	/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll(){
		super.beforeAll();
		
		// setup the model
		super.setup();
		
		// init the model object
		model.init();
	}

	function afterAll(){

	/*	story("Quiero agragar la data para pruebas", function(){
			queryExecute( 
				"
				INSERT INTO `users` VALUES (1,'Lucas Padgett','lreyes@google.com','Software1','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(2,'Maria Bearenstein','rmoneymaker@adobe.com','Table2','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(3,'Romeo Zelda','erodrigues@msn.com','Ice-cream3','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(4,'Lucas Marquez','umaggiano@apple.com','Plane4','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(5,'Ricardo Moneymaker','lrogers@aol.com','Bee5','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(6,'Nick Reyes','omaggiano@msn.com','Book6','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(7,'Andy Boudreaux','osanabria@test.com','Triangle7','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(8,'Alice Moneymaker','aclapton@microsoft.com','Skeleton8','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(9,'Delores Anderson','amaggiano@msn.com','Ship9','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(10,'Frank Tobias','obearenstein@gmail.com','Milkshake10','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49');
                "
			) 
		});*/

		super.afterAll();
	}

	/*********************************** BDD SUITES ***********************************/
	
	function run(){
        //test
		describe( "Usuario", function(){
			it( "puede ser creado", function(){
				expect( model ).toBeComponent();
			});
		
		});		

	}

}
