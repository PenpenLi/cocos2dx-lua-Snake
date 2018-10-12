---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by iCocos.
--- DateTime: 2018/10/11 上午11:29
---

--- @class Apple
local Apple = class("Apple")

---ctor 构造器
---@param bound table
---@param node table
function Apple:ctor(bound, node)
    self.bound = bound
    self.node = node

    math.randomseed(os.time())

    self:Generate()

end

---getPos 获取范围
---@param bound table
local function getPos(bound)

    return math.random(-bound, bound)

end

---Generate 生产苹果
function Apple:Generate()

    -- 让函数具有可重用性
    if self.appleSprite ~= nil then

        self.node:removeChild(self.appleSprite)

    end

    -- 苹果精灵
    local sp = display.newSprite("apple.png")
    local genBoundLimit = self.bound - 1
    local x, y = getPos(genBoundLimit), getPos(genBoundLimit)
    local finalX, finalY = Grid2Pos(x, y)

    sp:setPosition(finalX,finalY)
    self.node:addChild(sp)

    -- 记录苹果和位置
    self.appleX = x
    self.appleY = y
    self.appleSprite = sp

end

---CheckAppleCollide
---@param x number X坐标
---@param y number Y坐标
function Apple:CheckAppleCollide(x, y)
    
    if x == self.appleX and y == self.appleY then
        return true
    end

    return false

end

---ResetApple 重置苹果
function Apple:ResetApple()

    self.node:removeChild(self.appleSprite)
    
end

return Apple