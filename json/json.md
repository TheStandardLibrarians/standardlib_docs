# irb

## size  / Josh

 $ irb
2.1.2 :001 > require 'json'
=> true

**Library Item: JSON** 
**Definition: Turn a ruby hash into json format or convert JSON format into a ruby hash**
**Explanation**
**Example**
require 'json'
{sandwich: "cheese, lettuce, tomatoes"}.to_json

JSON.load('{"fruits":["apples", "oranges", "bananas"]}')
**Problem**
Load a JSON file into a ruby object.

Data:
dynamite: in mr chip's ship
watches: in a bag under the cat's tree
jewelry: box in bear's cabin
candy: in the monkey's house
bicycle: in the horse's cave

### {"dynamite":"in mr chips ship","watches":"in a bag under the cats tree","jewelery":"box in bears cabin","candy":"in the monkey\'s house","bicycle": "in the horse\'s cave"}  

**Narrative**
The rabbit is running around stealing things.  He has accumulated a fair amount of items and he wants to keep track of where he is hiding them.

**Dialogue**
Load a JSON file using the JSON.load method.

**Expected user input**
### JSON.load('{"dynamite":"in mr chips ship","watches":"in a bag under the cats tree","jewelery":"box in bears cabin","candy":"in the monkey\'s house","bicycle": "in the horse\'s cave"}')  

**Graphic (from Jen)**
