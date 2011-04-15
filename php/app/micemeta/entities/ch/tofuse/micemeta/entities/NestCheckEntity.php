<?php
namespace ch\tofuse\micemeta\entities;

use Doctrine\Common\Collections\ArrayCollection;

/*require_once('UserEntity.php');
require_once('ILocationCheck.php');*/
 
/**
 * @Entity
 * @Table(	name="nestcheck",
 * 			uniqueConstraints={@UniqueConstraint(name="checkdate_unique",columns={"checkdate"})},
 *      	indexes={@Index(name="checkdate_idx", columns={"checkdate"})} )
 */
class NestCheckEntity {
	
	/** 
	 * @Id 
	 * @Column(type="integer") 
	 * @GeneratedValue(strategy="IDENTITY") 
	 */
	public $id;
	
	/**
	 * @Column(type="date")
	 */
	public $checkdate;
	
	/**
	 * @OneToOne(targetEntity="UserEntity")
	 * @JoinColumn(name="user_id", referencedColumnName="id")
	 */
	public $user;
	
	/**
	 * @OneToMany(targetEntity="ILocationCheck", mappedBy="nestcheck")
	 */
	public $locationChecks;
	
	public function __construct() {
        $this->locationChecks = new ArrayCollection();
    }
}

?>