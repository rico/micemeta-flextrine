<?php
namespace ch\tofuse\micemeta\entities;

use Doctrine\Common\Collections\ArrayCollection;
/*require_once('BoxCheckEntity.php');*/
 
/**
 * @Entity
 * @Table(name="box",indexes={@Index(name="box_idx", columns={"segment"})})
 */
class BoxEntity {
	
	/**
	 * @Id
	 * @Column(type="string", length=2)
	 */
	public $id;
	
	/**
	 * @Column(type="string", length=1)
	 */
	public $segment;
	
	/**
	 * @Column(type="datetime")
	 */
	public $last;
	
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
	 * @Column(type="smallint")
	 */
	public $xcoord;
	
	/**
	 * @Column(type="smallint")
	 */
	public $ycoord;
	
	/**
	 * @OneToMany(targetEntity="BoxCheckEntity", mappedBy="box")
	 */
	public $box_checks;
	
	public function __construct() {
		$this->box_checks = new ArrayCollection();
	}
}

?>