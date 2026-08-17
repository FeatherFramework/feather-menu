---@meta

-- RDR3 namespace: UIEVENTS -- generated from rdr3-nativedb-data, do not hand-edit.
-- Regenerate via generate_natives.js if the source natives.json is updated.

-- EVENTS_UI_GET_MESSAGE  (0xE24E957294241444)
-- eventData:
-- struct UI_SCRIPT_EVENT
-- {
-- 	alignas(8) eUIScriptEventType eventType; // https://alloc8or.re/rdr3/doc/enums/eUIScriptEventType.txt
-- 	alignas(8) int intParam;
-- 	alignas(8) Hash hashParam;
-- 	alignas(8) Hash datastoreParam;
-- };
-- 
-- Old name: _EVENT_MANAGER_GET_EVENT
-- min build: 1207
---@param hash number
---@return boolean
---@return any
function EventsUiGetMessage(hash) end

-- EVENTS_UI_IS_PENDING  (0x67ED5A7963F2F722)
-- Old name: _EVENT_MANAGER_IS_EVENT_PENDING
-- min build: 1207
---@param hash number
---@return boolean
function EventsUiIsPending(hash) end

-- EVENTS_UI_PEEK_MESSAGE  (0x90237103F27F7937)
-- eventData: see EVENTS_UI_GET_MESSAGE
-- 
-- Old name: _EVENT_MANAGER_PEEK_EVENT
-- min build: 1207
---@param hash number
---@return boolean
---@return any
function EventsUiPeekMessage(hash) end

-- EVENTS_UI_POP_MESSAGE  (0x8E8A2369F48EC839)
-- Old name: _EVENT_MANAGER_POP_EVENT
-- min build: 1207
---@param hash number
function EventsUiPopMessage(hash) end
