<?php
namespace ch\tofuse\micemeta\entities;

use Doctrine\Common\Collections\ArrayCollection;
 
/**
 * @Entity
 * @Table(name="litter")
 */
class LitterEntity {

	/**
	 * @Id
	 * @Column(type="integer")
	 * @GeneratedValue(strategy="IDENTITY")
	 */
	public $id;
	
	/**
	 * @Column(type="string", length=32)
	 */
	public $identifier;
	
	/**
	 * @Column(type="date")
	 */
	public $first_found_date;
	
	/**
	 * @Column(type="smallint")
	 */
	public $first_found_age;
	
    /**
     * @OneToMany(targetEntity="LitterCheckEntity", mappedBy="litter")
     */
    public $litterChecks;
    
 	public function __construct() {
        $this->litterChecks = new ArrayCollection();
    }
}