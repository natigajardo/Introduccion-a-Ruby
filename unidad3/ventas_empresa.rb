v1 = [100, 20, 50, 70, 90]
v2 = [150, 30, 50, 20, 30]

vt = [] # Ventas totales
n = v1.count

n.times do |i|
vt.push v1[i] + v2[i]
end
print vt
