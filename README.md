# BI-iOS-Social-Server

Backend for the third homework.
Note: there are no access rights implemented, please update you data only :)

## Prerequisities

Same as the second homework (+ rmagick gem).

# Usage

## GET /friends.json

Array of friends.

### response:

	[
   		{
      		"id":1,
      		"created_at":"2012-10-24T14:03:27Z",
      		"name":"Kubbing",
      		"status":"\u2026totally awesome",
      		"gender":"M",
      		"image":{
      		    "url":"/uploads/friend/image/2/IMG_3273.jpg",
      		    "thumbnail":{
         	        "url":"/uploads/friend/image/2/thumbnail_IMG_3273.jpg"
      		}
      	}
	]
	
## GET /items/\<id\>.json

Detailed info of a friend.

### response:

	{
      		"id":1,
      		"created_at":"2012-10-24T14:03:27Z",
      		"name":"Kubbing",
      		"status":"\u2026totally awesome",
      		"gender":"M",
      		"image":{
      		    "url":"/uploads/friend/image/2/IMG_3273.jpg",
      		    "thumbnail":{
         	        "url":"/uploads/friend/image/2/thumbnail_IMG_3273.jpg"
      		}
    }
	
## POST /items.json

Creates new item at the server.

### arguments:

	{
	   "friend[name]":"jmeno",
	   "friend[status]":"status",
	   "friend[latitude]":"10",
	   "friend[longitude]":"20",
	   "friend[gender]":"M",
	}
	
### response (not related to the request arguments above):

	{
	   "created_at":"2012-11-18T10:36:24Z",
	   "gender":"",
	   "id":5,
	   "image":{
	      "url":null,
	      "thumbnail":
	      {	
    	     "url":null
      		}
   		},
	   "latitude":null,
	   "longitude":null,
	   "name":"super jmeno",
	   "status":"",
	   "updated_at":"2012-11-18T10:36:24Z"
	}

	
## PUT /friends/\<id\>.json

Updates an friend at the server.

### arguments:

	{
	   "item[status]":"mam se dobre",
	   "item[latitude]":"50",
	   "item[longitude]":"15.4567",
	}
	
## MULTIPART-PUT friends/\<id\> from the BI-iOS-Multipart...

updates friend's image
	
## DELETE /friends/\<id\>.json

Deletes an item at the server.