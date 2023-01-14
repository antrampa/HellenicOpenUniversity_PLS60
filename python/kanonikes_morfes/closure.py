
def findTheClosure(attr, list):  # { A->B, A->C,A->D, B->E,B->F, AG->F }

    closure = [attr]
    closureChanged = True
    while closureChanged:
        closureChanged = False
        for x in list:
            # print(x)
            f = x.split("->")
            # print(f)
            if f[0] == attr or f[0] in closure:
                newAttr = f[1]
                if newAttr not in closure:
                    closure.append(newAttr)
                    closureChanged = True

    return closure


list = ["A->B", "A->C", "A->D", "B->E", "B->F", "AG->F"]
attr = "A"
closure = findTheClosure(attr, list)
print("The closure of {0} in {1} is: {2}".format(attr, list, closure))

list2 = ["A->B", "A->C", "A->D", "B->E", "B->F"]
attr = "A"
closure = findTheClosure(attr, list2)
print("The closure of {0} in {1} is: {2}".format(attr, list2, closure))
