#sk-dnd a skill; name dnd-kit; layer topic.
#sk-dnd trigger <"drag" "drop" "sortable" "move card" "kanban interaction">.

#sk-dnd pkgs <"@dnd-kit/core" "@dnd-kit/sortable" "@dnd-kit/utilities">.
#sk-dnd sensors <pointer keyboard>; pointer {activationConstraint {distance 6}}; keyboard {coordinateGetter sortableKeyboardCoordinates}.

#sk-dnd pattern multi-container; shape <c1 c2 c3 c4 c5>.
#sk-dnd c1 "one DndContext, collisionDetection closestCorners".
#sk-dnd c2 "per column: SortableContext (items = task ids, verticalListSortingStrategy) + useDroppable(column id) on the list wrapper — enables dropping into empty column".
#sk-dnd c3 "per card: useSortable(task id); apply CSS.Transform + transition; isDragging → opacity-30".
#sk-dnd c4 "cross-column move happens in onDragOver (live preview: remove from source, splice into target at over-index)".
#sk-dnd c5 "same-column reorder happens in onDragEnd via arrayMove".
#sk-dnd overlay "DragOverlay renders card clone (slight rotate + stronger glow); real card stays ghosted".

#sk-dnd trap-1 "setState updater runs AFTER the event handler returns; a ref nulled at handler end is already null inside the updater" !must.
#sk-dnd trap-1-fix "read refs into local consts at handler top; compute flags (e.g. moved-across) before setState; fire toasts/side-effects OUTSIDE the updater" !must.
#sk-dnd trap-2 "when list is filtered (search), give SortableContext the visible list, not the full list".
#sk-dnd strictmode compatible true.
