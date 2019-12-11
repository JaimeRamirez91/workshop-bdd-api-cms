/**
* I am a new Model Object
*/
component accessors="true" persistent="true" table="content"{

	// inject the user service
	//property name="userService" inject="UserService";
	//User function new() provider="User";

	
	
	// Primary Key
	property name="id" fieldtype="id" column="id" generator="native" setter="true" ;
	// Properties
	property name="slug"           ormtype = "varchar" length ="255" dbdefault="'No default'" notnull="true" unique="true" index="slug";
	property name="title"          ormtype = "varchar" length ="255" dbdefault="'No default'" notnull="true";
	property name="body"           ormtype="text" notnull="true";
	property name="isPublished"    ormtype="boolean" default="true" notnull="true" index="idx_publishing";
	property name="publishedDate"  ormtype="date" index="idx_publishing" default="null";
	property name="createdDate"    type="date";
	property name="modifiedDate"   type="date";
	property name="user"           fieldtype="many-to-one"  cfc="User"    fkcolumn="FK_userId";
	
	this.memento = {
		defaultIncludes = [ "*" ],
		defaultExcludes = [ "fk_UserID"]
	};
	

	/**
	 * Constructor
	 */
	Content function init(){
		variables.createdDate 	= now();
		variables.modifiedDate 	= now();
		variables.FK_userID 	= "";
		return this;
	}

	boolean function isLoaded(){
		return ( !isNull( variables.id ) && len( variables.id ) );
	}
}

