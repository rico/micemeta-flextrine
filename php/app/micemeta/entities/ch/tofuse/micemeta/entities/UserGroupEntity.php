<?php
namespace ch\tofuse\micemeta\entities;
 
use Doctrine\Common\Collections\ArrayCollection;

/*require_once('UserEntity.php');*/
 
/**
 * @Entity
 * @Table(name="usergroup")
 */
class UserGroupEntity {
	
	/** 
	 * @Id 
	 * @Column(type="integer") 
	 * @GeneratedValue(strategy="IDENTITY") 
	 */
    public $id;
    
    /**
     * @Column(type="string", length=40)
     */
    public $name;
    
    /**
     * @Column(type="smallint")
     */
    public $privileges;
    
    /**
     * @OneToMany(targetEntity="UserEntity", mappedBy="usergroup")
     */
    public $users;
    
 	public function __construct() {
        $this->users = new ArrayCollection();
    }
}
?>