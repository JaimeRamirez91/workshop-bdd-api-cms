/*******************************************************************************
*	Integration Test as BDD (CF10+ or Railo 4.1 Plus)
*
*	Extends the integration class: coldbox.system.testing.BaseTestCase
*
*	so you can test your ColdBox application headlessly. The 'appMapping' points by default to 
*	the '/root' mapping created in the test folder Application.cfc.  Please note that this 
*	Application.cfc must mimic the real one in your root, including ORM settings if needed.
*
*	The 'execute()' method is used to execute a ColdBox event, with the following arguments
*	* event : the name of the event
*	* private : if the event is private or not
*	* prePostExempt : if the event needs to be exempt of pre post interceptors
*	* eventArguments : The struct of args to pass to the event
*	* renderResults : Render back the results of the event
*******************************************************************************/
component extends="coldbox.system.testing.BaseTestCase" {
	
	/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll(){
		/*story("Quiero agragar la data para pruebas", function(){
			given( "Registros existenten", function(){
				then( "puedo registrar los datos", function(){
					// Pruebo que mi usuario no exista
					expect( 
						queryExecute( 
							"select * from users where id > 1 or id < 11", 
							{ returntype = "array" } 
						) 
					).toBeEmpty();
					expect( 
						queryExecute( 
							"
							INSERT INTO `content` VALUES (1,'Box-Girl-Swimming-Pool','brisket alcatra shankle pork chop, turducken picanha','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',0,'2011-10-17 12:57:02','2019-05-19 22:42:49','2019-05-19 22:42:49',2),(2,'Library-Brain-Necklace','hock beef landjaeger boudin alcatra','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',0,'2012-09-30 11:12:10','2019-05-19 22:42:49','2019-05-19 22:42:49',2),(3,'God-Finger-Hieroglyph','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',1,'2015-06-15 11:09:44','2019-05-19 22:42:49','2019-05-19 22:42:49',9),(4,'Brain-Teeth-Crystal','hock beef landjaeger boudin alcatra','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',1,'2018-06-18 07:44:08','2019-05-19 22:42:49','2019-05-19 22:42:49',6),(5,'Floodlight-Hieroglyph-Parachute','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',1,'2016-03-23 08:30:48','2019-05-19 22:42:49','2019-05-19 22:42:49',5),(6,'Flower-Tapestry-Shop','Venison doner leberkas turkey ball tip tongue','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',0,'2018-05-20 05:57:20','2019-05-19 22:42:49','2019-05-19 22:42:49',2),(7,'Knife-Film-Surveyor','Venison doner leberkas turkey ball tip tongue','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',1,'2012-05-04 01:16:55','2019-05-19 22:42:49','2019-05-19 22:42:49',6),(8,'PaintBrush-Sword-Gloves','Venison doner leberkas turkey ball tip tongue','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',1,'2011-08-10 07:01:25','2019-05-19 22:42:49','2019-05-19 22:42:49',4),(9,'Spoon-School-Staircase','sausage beef beef ribs pancetta pork chop doner short ribs','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',0,'2016-09-29 08:14:12','2019-05-19 22:42:49','2019-05-19 22:42:49',10),(10,'Record-Slave-Crystal','sausage beef beef ribs pancetta pork chop doner short ribs','Bacon ipsum dolor amet bacon biltong brisket sirloin kielbasa,hock beef landjaeger boudin alcatra,sausage beef beef ribs pancetta pork chop doner short ribs,brisket alcatra shankle pork chop, turducken picanha,Venison doner leberkas turkey ball tip tongue',1,'2010-08-18 09:09:16','2019-05-19 22:42:49','2019-05-19 22:42:49',4);
							"
						) 
					).toBeEmpy();
		
				});
			});	
		});*/
		reset();
		//super.beforeAll();
		// do your own stuff here
	}

	function afterAll(){
		/*story("Quiero eliminar la data para pruebas", function(){
			queryExecute( 
				"
				DELETE FROM content WHERE id > 0 and id < 11;
                "
			) 
		});*/
		super.afterAll();
	}

	/*********************************** BDD SUITES ***********************************/
	
	function run(){

		story( "Quiero poder ver contenido con diferentes tipos de opciones", function(){

			beforeEach(function( currentSpec ){

				// Setup as a new ColdBox request for this suite, VERY IMPORTANT. ELSE EVERYTHING LOOKS LIKE THE SAME REQUEST.
				setup();
			});

			it( "pude mostrar todas los contenidos en el sistema", function(){
				var event = get( route = "/content" );
				var response = event.getPrivateValue( "Response" );
				expect( response.getError() ).toBeFalse();
				expect( response.getData() ).toBeArray();
			});

			it( "mostrar un contenido por slug", function(){
				var testSlug = "Spoon-School-Staircase";
				var event = get( route = "/content/#testSlug#" );
				var response = event.getPrivateValue( "Response" );
				debug( response.getMessages() );
				expect( response.getError() ).toBeFalse();
				expect( response.getData() ).toBeStruct();
				expect( response.getData().slug ).toBe( testSlug );
			});

			it( "puedo borrar un contenido", function(){

				var event = delete( route = "/content/prueba1" );
				var response = event.getPrivateValue( "Response" );
                expect( response.getError()).toBeFalse();
				expect( response.getData()).toBeNumeric();

			});

			it( "crear un nuevo contenido", function(){

				var event = post("/content", {
					'id'                    = '50',
					'slug'					= 'prueba1',
					'title'                	= 'title slug jkkj',
					'body'            	    = 'body slug kjjkh'
			    } );
			
				var response = event.getPrivateValue( "Response" );
				//writeDump(response); abort;
				expect( response.getError()).toBeFalse();
				expect( response.getData()).toBeNumeric();
			});

			it( "editar un contenido", function(){
				var event = patch("/content/17/", {
					'slug'					= 'prueba1',
					'body'                	= 'Modificado'
				} );

				var response = event.getPrivateValue( "Response" );
				//writeDump(response); abort;
				expect( response.getError()).toBeFalse();
				expect( response.getData()).toBeNumeric();	
			});
		
		});

	}

}

