<?php
namespace ch\tofuse\micemeta\entities;
 
use Doctrine\Common\Collections\ArrayCollection;
 
/**
 * @Entity
 * @Table(name="rfid",indexes={@Index(name="muouse_idx", columns={"dir","res","i","last"})}, uniqueConstraints={@UniqueConstraint(name="rfid_unq", columns={"rfid"})})
 */
class MouseEntity {
	
	/** 
	 * @Id 
	 * @Column(type="integer") 
	 * @GeneratedValue(strategy="IDENTITY") 
	 */
	public $id;
 
    /** 
     * @Column(type="string", length=10) 
     */
    public $rfid;
    
    /**
     * @Column(type="date")
     */
    public $birth_date;
    
    /**
     * @Column(type="date")
     */
    public $death_date;
    
    /**
     * @Column(type="datetime")
     */
    public $import_date;
    
    /**
     * @Column(type="datetime")
     */
    public $dir;
    
    /**
     * @Column(type="datetime")
     */
    public $res;
    
    /**
     * @Column(type="smallint")
     */
    public $i;
    
    /**
     * @Column(type="integer")
     */
    public $data_count;
    
    /**
     * @Column(type="integer")
     */
    public $dir_count;
    
    /**
     * @Column(type="integer")
     */
    public $res_count;
    
    /**
     * @Column(type="string", length=1)
     */
    public $sex;
    
    /**
     * @Column(type="datetime")
     */
    public $last;
    
    /**
     * @Column(type="datetime")
     */
    public $implant_date;
    
    /**
     * @Column(type="decimal", columnDefinition="DECIMAL(3,1) UNSIGNED")
     */
    public $weight;
    
    /**
     * @ManyToMany(targetEntity="ILocationCheck", mappedBy="mice")
     */
    public $locationChecks;
    
    public function __construct() {
		$this->locationChecks = new ArrayCollection();
    }
 
}
 
?>
