<?php
namespace ch\tofuse\micemeta\entities;
 
use Doctrine\Common\Collections\ArrayCollection;

/*require_once('UserGroupEntity.php');*/
 
/**
 * @Entity
 * @Table(name="user")
 */
class UserEntity {
	
	/**
	 * @Id 
	 * @Column(type="integer") 
	 * @GeneratedValue(strategy="IDENTITY") 
	 */
    public $id;
 
    /** 
     * @Column(type="string",length=80) 
     */
    public $fname;
 
    /** 
     * @Column(type="string",length=80) 
     */
    public $lname;
 
    /** 
     * @Column(type="string",length=2) 
     */
    public $acronym;
    
 	/**
     * @ManyToOne(targetEntity="UserGroupEntity", inversedBy="users")
     * @JoinColumn(name="usergroup_id", referencedColumnName="id")
     */
    private $userGroup;
 	
}

?>