<?php
namespace ch\tofuse\micemeta\entities;

/**
 * @Entity
 * @Table(name="otherlocation")
 */
class OtherLocationEntity {
	
	/**
	 * @Id
	 * @Column(type="integer")
	 * @GeneratedValue(strategy="IDENTITY") 
	 */
	public $id;
	
	/**
	 * @Column(type="text")
	 */
	public $description;
	
	/**
	 * @Column(type="text", length=4)
	 */
	public $code;
	
	/**
	 * @Column(type="string", length=1)
	 */
	public $segment;
}

?>