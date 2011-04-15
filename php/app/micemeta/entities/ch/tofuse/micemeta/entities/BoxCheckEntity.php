<?php
namespace ch\tofuse\micemeta\entities;

/*require_once('BoxEntity.php');
require_once('NestCheckEntity.php');"*/

/**
 * @Entity
 * @Table(name="boxcheck")
 */
class BoxCheckEntity extends ILocationCheck {
	
	/**
	 * @Id
	 * @Column(type="integer")
	 * @GeneratedValue(strategy="IDENTITY") 
	 */
	public $id;
	
	/**
	 * @Column(type="boolean")
	 */
	public $open_nest;
	
	/**
	 * @ManyToOne(targetEntity="BoxEntity", inversedBy="box_checks")
	 */
	public $box;
	
}

?>