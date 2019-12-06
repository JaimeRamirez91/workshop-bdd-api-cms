/**
* I am a new Model Object
*/
/**
* I am a new Model Object
*/
component accessors="true"{
	
	// Properties
	property name="id"           type="string";
	property name="name"         type="string";
	property name="email"        type="string";
	property name="username"     type="string";
	property name="password"     type="string";
	property name="createdDate"  type="date";
	property name="modifiedDate" type="date";
	

	//formato JSON
    this.memento = {
		defaultIncludes = [ "id", "name", "email", "username", "createdDate", "modifiedDate" ],
		neverInclude = [ "password" ]
	};

	/**
	 * Constructor
	 */
	User function init(){

		variables.createdDate = now();
		variables.modifiedDate = now();
		
		return this;
	}
    //New model ord read to database
	boolean function isLoaded(){
		return ( !isNull( variables.id ) && len( variables.id ) );
	}

}
