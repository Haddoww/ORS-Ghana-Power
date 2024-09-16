import json

generator_json = "C:/Users/jikar/OneDrive/Documents/ORS/geoJSON exports/export_generators.geojson"
with open(generator_json) as f:
    generatorDataRaw = json.load(f) # print JSON string into a Python dictionary

#print(generatorData["features"])
#for key in generatorData.keys():
    #print(key)
    #print(generatorData[key])
generatorDataRaw_length = len(list(generatorDataRaw.items())[4][1])
#print(generatorDataRaw_length)

#~~~~~~~~~~
# make a list of generators
#    SAMPLE LIST ITEM:   { "ID" : "way/204596169", "method" : "combustion", "output" : "electricity", "source" : "diesel", "coordinates" : "[[[-0.1574508, 9.3693323], [-0.1574613, 9.3693087], [-0.1574315, 9.3692959], [-0.1574211, 9.3693194], [-0.1574508, 9.3693323]]]"}
generatorData_List = [
    {}
]


i = 0
#test = list(generatorDataRaw.items())[4][1][36]
#print(test) 
while i < generatorDataRaw_length:
    aDict = list(generatorDataRaw.items())[4][1][i]
    aDictModified = {}
    aDictModified["ID"] = aDict["id"]
    if "generator:method" in aDict["properties"]:
        aDictModified["method"] = aDict["properties"]["generator:method"]
    if "generator:source" in aDict["properties"]:
        aDictModified["source"] = aDict["properties"]["generator:source"]
    if "generator:output:electricity" in aDict["properties"]:
        aDictModified["output"] = aDict["properties"]["generator:output:electricity"]
    aDictModified["coordinates"] = aDict["geometry"]["coordinates"]
    #print(aDictModified)
    print("\n")

    generatorData_List.append(aDictModified)
    #print(i)
    
    i += 1
print(generatorData_List)
print(len(generatorData_List))
#~~~~~~~~~~~

print("XXXXXXXXXXXXXXXXXXXXXXXXXX")
#first_item = list(generatorDataRaw.items())[4][1][60] # the first generator in the list
#print("First Item: ", first_item)