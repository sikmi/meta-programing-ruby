class MyClass
end

obj1 = MyClass.new
obj2 = MyClass.new
obj3 = MyClass.new
puts obj3.instance_variable_set(:@x, 10)

# 1. ObjectのsuperclassはBasicObject
# 2. ModuleのsuperclassはObject
# 3. ClassのclassはClass
# 4. obj3にだけインスタンス変数が定義される
