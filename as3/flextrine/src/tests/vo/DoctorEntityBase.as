package tests.vo {
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	import mx.events.PropertyChangeEvent;
	import org.davekeen.flextrine.orm.collections.PersistentCollection;
	import org.davekeen.flextrine.orm.events.EntityEvent;
	import org.davekeen.flextrine.flextrine;
  	import tests.vo.Appointment;
   	import tests.vo.Patient;
  
	[Bindable]
	public class DoctorEntityBase extends EventDispatcher {
		
		public var isUnserialized__:Boolean;
		
		public var isInitialized__:Boolean = true;
		
		flextrine var savedState:Dictionary;
		
		[Id]
		public var id:String;
		
		public function get name():String { checkIsInitialized("name"); return _name; }
		public function set name(value:String):void { _name = value; }
		private var _name:String;
		
		[Association(side="inverse", oppositeAttribute="doctor", oppositeCardinality="1")]
		public function get appointments():PersistentCollection { checkIsInitialized("appointments"); return _appointments; }
		public function set appointments(value:PersistentCollection):void { _appointments = value; }
		private var _appointments:PersistentCollection;
		
		[Association(side="inverse", oppositeAttribute="doctor", oppositeCardinality="1")]
		public function get patients():PersistentCollection { checkIsInitialized("patients"); return _patients; }
		public function set patients(value:PersistentCollection):void { _patients = value; }
		private var _patients:PersistentCollection;
		
		public function DoctorEntityBase() {
			if (!_appointments) _appointments = new PersistentCollection(null, true, "appointments", this);
			if (!_patients) _patients = new PersistentCollection(null, true, "patients", this);
		}
		
		override public function toString():String {
			return "[Doctor id=" + id + "]";
		}
		
		private function checkIsInitialized(property:String):void {
			if (!isInitialized__ && isUnserialized__)
				dispatchEvent(new EntityEvent(EntityEvent.INITIALIZE_ENTITY, property));
		}
		
		flextrine function setValue(attributeName:String, value:*):void {
			if (isInitialized__) {
				if (this["_" + attributeName] is PersistentCollection)
					throw new Error("Internal error - Flextrine attempted to setValue on a PersistentCollection.");
					
				var propertyChangeEvent:PropertyChangeEvent = PropertyChangeEvent.createUpdateEvent(this, attributeName, this[attributeName], value);
				
				this["_" + attributeName] = value;
				
				dispatchEvent(propertyChangeEvent);
			}
		}
		
		flextrine function addValue(attributeName:String, value:*):void {
			if (isInitialized__) {
				if (!(this["_" + attributeName] is PersistentCollection))
					throw new Error("Internal error - Flextrine attempted to addValue on a non-PersistentCollection.");
					
				this["_" + attributeName].flextrine::addItemNonRecursive(value);
			}
		}
		
		flextrine function removeValue(attributeName:String, value:*):void {
			if (isInitialized__) {
				if (!(this["_" + attributeName] is PersistentCollection))
					throw new Error("Internal error - Flextrine attempted to removeValue on a non-PersistentCollection.");
				
				this["_" + attributeName].flextrine::removeItemNonRecursive(value);
			}
		}
		
		flextrine function saveState():void {
			if (isInitialized__) {
				flextrine::savedState = new Dictionary(true);
				flextrine::savedState["id"] = id;
				flextrine::savedState["name"] = name;
				appointments.flextrine::saveState();
				patients.flextrine::saveState();
			}
		}
		
		flextrine function restoreState():void {
			if (isInitialized__) {
				id = flextrine::savedState["id"];
				name = flextrine::savedState["name"];
				appointments.flextrine::restoreState();
				patients.flextrine::restoreState();
			}
		}
		
	}

}
