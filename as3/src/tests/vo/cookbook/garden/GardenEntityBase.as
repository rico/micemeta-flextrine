package tests.vo.cookbook.garden {
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	import mx.events.PropertyChangeEvent;
	import mx.collections.errors.ItemPendingError;
	import org.davekeen.flextrine.orm.collections.PersistentCollection;
	import org.davekeen.flextrine.orm.events.EntityEvent;
	import org.davekeen.flextrine.flextrine;

	[Bindable]
	public class GardenEntityBase extends EventDispatcher {
		
		public var isUnserialized__:Boolean;
		
		public var isInitialized__:Boolean = true;
		
		flextrine var itemPendingError:ItemPendingError;
		
		[Id]
		public function get id():String { return _id; }
		public function set id(value:String):void { _id = value; }
		private var _id:String;
		
		public function get name():String { checkIsInitialized("name"); return _name; }
		public function set name(value:String):void { _name = value; }
		private var _name:String;
		
		public function get area():int { checkIsInitialized("area"); return _area; }
		public function set area(value:int):void { _area = value; }
		private var _area:int;
		
		public function get grassLastCutDate():Date { checkIsInitialized("grassLastCutDate"); return (_grassLastCutDate && _grassLastCutDate.getTime() > 0) ? _grassLastCutDate : null; }
		public function set grassLastCutDate(value:*):void { _grassLastCutDate = (value is Date) ? value : new Date(value); }
		private var _grassLastCutDate:Date;
		
		[Association(side="inverse", oppositeAttribute="garden", oppositeCardinality="1")]
		public function get trees():PersistentCollection { checkIsInitialized("trees"); return _trees; }
		public function set trees(value:PersistentCollection):void { _trees = value; }
		private var _trees:PersistentCollection;
		
		public function GardenEntityBase() {
			if (!_trees) _trees = new PersistentCollection(null, true, "trees", this);
		}
		
		override public function toString():String {
			return "[Garden id=" + id + "]";
		}
		
		private function checkIsInitialized(property:String):void {
			if (!isInitialized__ && isUnserialized__) {
				if (!flextrine::itemPendingError) {
					flextrine::itemPendingError = new ItemPendingError("ItemPendingError - initializing entity " + this);
					dispatchEvent(new EntityEvent(EntityEvent.INITIALIZE_ENTITY, property, flextrine::itemPendingError));
				}
			}
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
		
		flextrine function saveState():Dictionary {
			if (isInitialized__) {
				var memento:Dictionary = new Dictionary(true);
				memento["id"] = id;
				memento["name"] = name;
				memento["area"] = area;
				memento["grassLastCutDate"] = grassLastCutDate;
				memento["trees"] = trees.flextrine::saveState();
				return memento;
			}
			
			return null;
		}
		
		flextrine function restoreState(memento:Dictionary):void {
			if (isInitialized__) {
				id = memento["id"];
				name = memento["name"];
				area = memento["area"];
				grassLastCutDate = memento["grassLastCutDate"];
				trees.flextrine::restoreState(memento["trees"]);
			}
		}
		
	}

}
