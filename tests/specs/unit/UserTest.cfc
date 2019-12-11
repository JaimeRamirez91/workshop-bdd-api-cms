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
		//si no cuentas con datos
	    /*
		story("i have add data to users table", function(){
			queryExecute( 
				"
				INSERT INTO `users` VALUES (1,'Lucas Padgett','lreyes@google.com','Software1','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(2,'Maria Bearenstein','rmoneymaker@adobe.com','Table2','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(3,'Romeo Zelda','erodrigues@msn.com','Ice-cream3','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(4,'Lucas Marquez','umaggiano@apple.com','Plane4','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(5,'Ricardo Moneymaker','lrogers@aol.com','Bee5','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(6,'Nick Reyes','omaggiano@msn.com','Book6','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(7,'Andy Boudreaux','osanabria@test.com','Triangle7','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(8,'Alice Moneymaker','aclapton@microsoft.com','Skeleton8','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(9,'Delores Anderson','amaggiano@msn.com','Ship9','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49'),(10,'Frank Tobias','obearenstein@gmail.com','Milkshake10','$2a$12$FE2J7ZLWaI2rSqejAu/84uLy7qlSufQsDsSE1lNNKyA05GG30gr8C','2019-05-19 22:42:49','2019-05-19 22:42:49');
                "
			) 
		});
		story("i have add data to content table", function(){
			queryExecute( 
				"
                  INSERT INTO `content` VALUES (1,'Box-Girl-Swimming-Pool','brisket alcatra shankle pork chop, turducken picanha','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',0,'2011-10-17 12:57:02','2019-05-19 22:42:49','2019-05-19 22:42:49',2),(2,'Library-Brain-Necklace','hock beef landjaeger boudin alcatra','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',0,'2012-09-30 11:12:10','2019-05-19 22:42:49','2019-05-19 22:42:49',2),(3,'God-Finger-Hieroglyph','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',1,'2015-06-15 11:09:44','2019-05-19 22:42:49','2019-05-19 22:42:49',9),(4,'Brain-Teeth-Crystal','hock beef landjaeger boudin alcatra','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',1,'2018-06-18 07:44:08','2019-05-19 22:42:49','2019-05-19 22:42:49',6),(5,'Floodlight-Hieroglyph-Parachute','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',1,'2016-03-23 08:30:48','2019-05-19 22:42:49','2019-05-19 22:42:49',5),(6,'Flower-Tapestry-Shop','Venison doner leberkas turkey ball tip tongue','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',0,'2018-05-20 05:57:20','2019-05-19 22:42:49','2019-05-19 22:42:49',2),(7,'Knife-Film-Surveyor','Venison doner leberkas turkey ball tip tongue','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',1,'2012-05-04 01:16:55','2019-05-19 22:42:49','2019-05-19 22:42:49',6),(8,'PaintBrush-Sword-Gloves','Venison doner leberkas turkey ball tip tongue','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',1,'2011-08-10 07:01:25','2019-05-19 22:42:49','2019-05-19 22:42:49',4),(9,'Spoon-School-Staircase','sausage beef beef ribs pancetta pork chop doner short ribs','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',0,'2016-09-29 08:14:12','2019-05-19 22:42:49','2019-05-19 22:42:49',10),(10,'Record-Slave-Crystal','sausage beef beef ribs pancetta pork chop doner short ribs','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',1,'2010-08-18 09:09:16','2019-05-19 22:42:49','2019-05-19 22:42:49',4);

                "
			) 
		});*/
	}

	function afterAll(){

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
