<?php
namespace ch\tofuse\micemeta\entities;
 
/**
 * @Entity
 * @Table(name="littercheck")
 */
class LitterCheckEntity {

	/**
	 * @Id
	 * @Column(type="integer")
	 * @GeneratedValue(strategy="IDENTITY")
	 */
	public $id;
	
	/**
	 * @Column(type="text")
	 */
	public $remark;
	
	/**
     * @ManyToOne(targetEntity="ILocationCheck", inversedBy="litterChecks")
     */
	public $locationCheck;
	
	/**
     * @ManyToOne(targetEntity="LitterEntity", inversedBy="litterChecks")
     */
	public $litter;
	
}

?>