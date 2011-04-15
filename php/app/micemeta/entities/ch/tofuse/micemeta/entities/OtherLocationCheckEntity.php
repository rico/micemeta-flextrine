<?php
namespace ch\tofuse\micemeta\entities;

/**
 * @Entity
 * @Table(name="otherlocationcheck")
 */
class OtherLocationCheckEntity extends ILocationCheck {
	
	/**
	 * @Id
	 * @Column(type="integer")
	 * @GeneratedValue(strategy="IDENTITY") 
	 */
	public $id;
	
	/**
	 * @OneToOne(targetEntity="OtherLocationEntity")
	 * @JoinColumn(name="otherlocation_id", referencedColumnName="id")
	 */
	public $otherLocation;
	
}

?>