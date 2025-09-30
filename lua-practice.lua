

local name="Margo"
print(name)
print(true)


--basic variables

local string="helloo"
local idek=[[idek what this is yet]]

local truth,lies=true,false
local nothing=nil
print(nothing)

--iterator
x={1,2,3,4}
for index=1,#x do
    print(index,x[index])
end

s="margaret liza john"
for i=1,#s do 
    print(s:sub(i,i))
end


local b={"abc","cde",34,2.3}
for index,value in ipairs(x) do
    print(index,value)
end

array={[1]="true",[2]=false,[3]=4.5}
for index,value in ipairs(array) do
    print(index,value)
end


-- function
function idk(a)
    return a+"1"
end

print("function idk",idk(1))

local square=function(p)
    return p*p
end

print(square(3))

--higher order functions
local higher=function(value)
    return function(another)
        return value^another
    end
end

result=higher(4)
print("answer : ",result(5))

--maps
list={"first",4,false,nil}
print(list[1])
print(list[4])

maps={
    key="value",
    ["an expression"]=true,
    [function() end]=true

}

local f=function()
    

end

local t={
    [f]="calling function() end"
}

print(t[f])

local single_string=function(s)
    return s .. " Woow!"
end
print(single_string"hi")

--metatable
local vector_mt={}
vector_mt.__add = function(left,right)
    return setmetatable({
        left[1]+right[1],
        left[2]+right[2],
        left[3]+right[3]
    },vector_mt)
end

local v1=setmetatable({3,2,3,4},vector_mt)
local v2=setmetatable({4,3,5,4},vector_mt)
local v3=v1+v2
for index,values in ipairs(v3) do
    print(index,values)
end
print(v3+v3)










