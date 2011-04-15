<?php
namespace ch\tofuse\micemeta\entities;

use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @InheritanceType("JOINED")
 * @DiscriminatorColumn(name="discriminator", type="string")
 * @DiscriminatorMap({"box_check" = "BoxCheckEntity", "other_location_check" = "OtherLocationCheckEntity"})
 * @Table(name="locationcheck")
 */
class ILocationCheck
{
	/**
	 * @Id
	 * @Column(type="integer")
	 * @GeneratedValue(strategy="IDENTITY") 
	 */
	public $id;
	
	/**
	 * @Column(type="smallint")
	 */
	public $rank;
	
	/**
	 * @Column(type="smallint")
	 */
 	public $non_transpondered;
 	
 	/**
	 * @Column(type="smallint")
	 */
 	public $sub_adults;
 	
 	/**
	 * @Column(type="smallint")
	 */
 	public $pups;
 	
 	/**
	 * @Column(type="smallint")
	 */
 	public $pups_age;
 	
 	/**
	 * @Column(type="smallint")
	 */
 	public $pups_male_alive;
 	
 	/**
	 * @Column(type="smallint")
	 */
 	public $pups_male_dead;
 	
 	/**
	 * @Column(type="smallint")
	 */
 	public $pups_female_alive;
 	
 	/**
	 * @Column(type="smallint")
	 */
 	public $pups_female_dead;
 	
 	/**
	 * @Column(type="smallint")
	 */
 	public $pups_unknown_alive;
 	
 	/**
	 * @Column(type="smallint")
	 */
 	public $pups_unknown_dead;
 	
 	/**
	 * @Column(type="boolean")
	 */
 	public $new_litter;
 	
 	/**
	 * @Column(type="boolean")
	 */
 	public $communal;

 	/**
	 * @Column(type="text")
	 */
	public $remark;

 	/**
     * @ManyToMany(targetEntity="MouseEntity", inversedBy="locationChecks")
     * @JoinTable(name="locationchecks_mice",
     *      joinColumns={
     *			@JoinColumn(name="locationcheck_id", referencedColumnName="id")
     *      },
     *      inverseJoinColumns={
     *			@JoinColumn(name="mouse_id", referencedColumnName="id",unique=true)
     *		})
     */
	public $mice;
	
 	/**
	 * @OneToMany(targetEntity="LitterCheckEntity", mappedBy="locationCheck")
	 */
	public $litterChecks;
	
	/**
	 * @ManyToOne(targetEntity="NestCheckEntity", inversedBy="locationChecks")
	 */
	public $nestcheck;
	    
	public function __construct() {
		 $this->mice = new ArrayCollection();
		 $this->litterChecks= new ArrayCollection();
	}
 	
}

?>
