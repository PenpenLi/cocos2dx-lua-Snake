ccs = ccs or {}
---ActionFrame object
---@class ActionFrame : Ref
local ActionFrame = {}
ccs.ActionFrame = ActionFrame

--------------------------------
---@overload fun(float, ActionFrame):ActionInterval
---@overload fun(float):ActionInterval
---@param duration float
---@param srcFrame ActionFrame
---@return ActionInterval
function ActionFrame:getAction(duration, srcFrame) end

--------------------------------
---Gets the type of action frame<br>
---return the type of action frame
---@return int
function ActionFrame:getFrameType() end

--------------------------------
---Changes the time of action frame<br>
---param fTime  the time of action frame
---@param fTime float
---@return ActionFrame
function ActionFrame:setFrameTime(fTime) end

--------------------------------
---Changes the easing type.<br>
---param easingType the easing type.
---@param easingType int
---@return ActionFrame
function ActionFrame:setEasingType(easingType) end

--------------------------------
---Gets the time of action frame<br>
---return fTime  the time of action frame
---@return float
function ActionFrame:getFrameTime() end

--------------------------------
---Gets the index of action frame<br>
---return the index of action frame
---@return int
function ActionFrame:getFrameIndex() end

--------------------------------
---Changes the type of action frame<br>
---param frameType   the type of action frame
---@param frameType int
---@return ActionFrame
function ActionFrame:setFrameType(frameType) end

--------------------------------
---Changes the index of action frame<br>
---param index   the index of action frame
---@param index int
---@return ActionFrame
function ActionFrame:setFrameIndex(index) end

--------------------------------
---Set the ActionInterval easing parameter.<br>
---param parameter   the parameter for frame ease
---@param parameter array_table
---@return ActionFrame
function ActionFrame:setEasingParameter(parameter) end

--------------------------------
---Gets the easing type.<br>
---return the easing type.
---@return int
function ActionFrame:getEasingType() end

--------------------------------
---Default constructor
---@return ActionFrame
function ActionFrame:ActionFrame() end

return ActionFrame