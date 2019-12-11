/**
* I am a new Model Object
*/
component singleton accessors="true"{
	
	// Properties
	// To populate objects from data
    property name="populator" inject="wirebox:populator";
    // To create new User instances
    property name="wirebox" inject="wirebox";

	/**
	 * Constructor
	 */
	ContentService function init(){
		
		return this;
	}

	Content function new() provider="Content";
	
	/**
	* list
	*/
	array function list( orderBy="publishedDate" ){
		return queryExecute(
			" SELECT * FROM content ORDER BY ? ",
			[ arguments.orderBy ],
			{
				returnType : "array"
			}
		).map( ( content ) => {
			return populator.populateFromStruct(
                new(),
                content
            );
		} )
	}

	/**
	* findBySlug
	*/
	Content function findBySlug( required slug ){
		return populator.populateFromQuery(
            new(),
            queryExecute( "SELECT * FROM `content` WHERE `slug` = ?", [ arguments.slug ] )
        );
	}

	/**
	* create
	*/
	function create( required content ){	
		queryExecute( 
			"
				INSERT INTO `content` VALUES (?, ?, ?, ?, 0, CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,?)
			",
			[
				arguments.content.getId(),
				arguments.content.getSlug(),
				arguments.content.getTitle(),
				arguments.content.getBody(),
				arguments.content.getUser()
		  
			],
			{
				result : "local.result"
			}
		);
    	return result.generatedKey;
	}
	/**
	 * update
	 *
	 * @content 
	 */
	function update( required content ){	
		queryExecute( 
			"
				UPDATE `content` SET `body` =  ?  WHERE `slug` = ?
			",
			[
				arguments.content.getBody(),
				arguments.content.getSlug()
			],
			{
				result : "local.result"
			}
		);
    	return result.recordcount;
	}

    /**
	 * deleteBySlug
	 * @contentSlug
	 */
	function deleteBySlug( required slug ){

		queryExecute(
			          "DELETE FROM content WHERE slug = ?", [ arguments.slug ],{ result = "local.result" }
		);

		return result.recordcount;   //RECORDCOUNT;
	}

}
