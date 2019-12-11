/**
* I am a new Model Object
*/
/**
* I am a new Model Object
*/
component accessors="true" persistent="true" table="users"{
	 
	// Primary Key
	 property name="id" fieldtype="id" column="id" generator="native" setter="true";

	// Properties
	property name="name"         ormtype = "varchar" length ="255" dbdefault="'No default'" notnull="true";
	property name="email"        ormtype = "varchar" unique="true" length ="255" dbdefault="'No default'" notnull="true";
	property name="username"     ormtype = "varchar" unique="true" length ="255" dbdefault="'No default'" notnull="true";
	property name="password"     ormtype = "varchar" length ="255" dbdefault="'No default'" notnull="true";
	property name="modifiedDate" ormtype = "timestamp" notnull="true" dbdefault=now(); 
	property name="createdDate"  ormtype = "timestamp" notnull="true" dbdefault=now();  

	

	//formato JSON
    this.memento = {
		defaultIncludes = [ "id", "name", "email", "username", "createdDate", "modifiedDate" ],
		neverInclude = [ "password" ]
	};

	this.constraints = {
        // Example: age = { required=true, min="18", type="numeric" }
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
