{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "BossRoom",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_4C7B71","path":"rooms/BossRoom/BossRoom.yy",},
    {"name":"inst_24846899","path":"rooms/BossRoom/BossRoom.yy",},
    {"name":"inst_28D51D02","path":"rooms/BossRoom/BossRoom.yy",},
    {"name":"inst_7BE6E388","path":"rooms/BossRoom/BossRoom.yy",},
    {"name":"inst_7C033DA5","path":"rooms/BossRoom/BossRoom.yy",},
    {"name":"inst_5D4CC8D3","path":"rooms/BossRoom/BossRoom.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRPathLayer","resourceVersion":"1.0","name":"Path_1","colour":4278190335,"depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"pathId":{"name":"emptyPath","path":"paths/emptyPath/emptyPath.yy",},"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4C7B71","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":512.0,"y":352.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_24846899","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oBoss","path":"objects/oBoss/oBoss.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oRat","path":"objects/oRat/oRat.yy",},"propertyId":{"name":"path","path":"objects/oRat/oRat.yy",},"value":"emptyPath",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":512.0,"y":128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_28D51D02","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCamera","path":"objects/oCamera/oCamera.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":512.0,"y":192.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7BE6E388","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oBlock","path":"objects/oBlock/oBlock.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":6.0,"x":384.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7C033DA5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oBlock","path":"objects/oBlock/oBlock.yy",},"properties":[],"rotation":0.0,"scaleX":2.0,"scaleY":1.0,"x":160.0,"y":-64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5D4CC8D3","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oBossMusic","path":"objects/oBossMusic/oBossMusic.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":-32.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_1","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":23,"SerialiseWidth":40,"TileSerialiseData":[
38,39,54,38,39,70,71,70,71,38,39,38,39,38,39,38,39,38,39,38,39,38,39,38,39,54,40,40,72,73,72,73,72,73,74,75,74,75,74,75,
54,55,38,54,55,86,87,86,87,54,55,54,55,54,55,54,55,54,55,54,55,54,55,54,55,70,56,56,88,89,88,1342177365,1342177349,1342177333,1342177317,91,90,91,90,91,
54,38,39,54,55,38,39,38,39,70,71,70,71,70,71,70,71,70,71,70,71,70,71,70,71,86,40,40,72,73,72,1342177364,1342177348,1342177332,1342177316,75,74,75,74,75,
70,54,55,38,39,54,55,54,55,86,87,86,87,86,87,86,87,86,87,86,87,86,87,86,87,38,56,56,88,89,72,73,72,73,90,91,90,91,90,91,
86,38,39,54,55,70,71,70,71,38,39,38,39,38,39,38,39,38,39,38,39,38,39,38,39,54,40,40,88,89,88,89,72,73,74,75,74,75,74,75,
38,54,55,38,39,86,87,86,87,54,55,54,55,54,55,54,55,54,55,54,55,54,55,54,55,70,56,56,72,73,72,73,88,89,90,91,90,91,90,91,
54,55,54,55,39,54,55,38,39,70,71,70,71,70,71,70,71,70,71,70,71,70,71,70,71,86,40,40,88,89,88,89,72,73,74,75,74,75,74,75,
54,55,70,71,55,70,71,54,55,86,87,86,87,86,87,86,87,86,87,86,87,86,87,86,87,38,56,56,72,73,72,73,88,89,90,91,90,91,90,91,
38,39,86,87,39,86,87,70,71,38,39,38,39,38,39,38,39,38,39,38,39,38,39,38,39,54,40,40,88,89,88,89,72,73,74,75,74,75,74,75,
54,55,86,87,55,38,54,55,38,54,55,54,55,54,55,54,55,54,55,54,55,54,55,54,55,70,56,56,72,73,72,73,88,89,90,91,90,91,90,91,
39,55,38,39,54,55,70,71,39,70,71,70,71,70,71,70,71,70,71,70,71,70,71,70,71,86,40,40,88,89,88,89,72,73,74,75,74,75,74,75,
54,55,54,55,70,71,86,87,55,86,87,86,87,86,87,86,87,86,87,86,87,86,87,86,87,38,56,56,72,73,72,73,88,89,90,91,90,91,90,91,
70,71,70,71,86,87,86,87,39,38,39,38,39,38,39,38,39,38,39,38,39,38,39,38,39,54,40,40,88,89,88,89,72,73,74,75,74,75,74,75,
86,87,86,87,38,39,38,54,55,54,55,54,55,54,55,54,55,54,55,54,55,54,55,54,55,70,56,56,72,73,72,73,72,73,90,91,90,91,90,91,
38,38,39,38,39,38,39,38,39,70,71,70,71,70,71,70,71,70,71,70,71,70,71,70,71,86,40,40,88,89,88,89,88,89,74,75,74,75,74,75,
54,54,55,54,55,54,55,54,55,86,87,86,87,86,87,86,87,86,87,86,87,86,87,86,87,38,56,56,72,73,72,73,72,73,90,91,90,91,90,91,
70,70,71,70,71,70,71,70,71,38,39,38,39,38,39,38,39,38,39,38,39,38,39,38,39,54,40,40,88,89,88,89,88,89,74,75,74,75,74,75,
86,86,87,86,87,86,87,86,87,54,55,54,55,54,55,54,55,54,55,54,55,54,55,54,55,70,56,56,72,73,72,73,72,73,90,91,90,91,90,91,
38,39,38,39,38,39,38,39,38,70,71,70,71,70,71,70,71,70,71,70,71,70,71,70,71,86,40,40,88,89,88,89,88,89,74,75,74,75,74,75,
54,55,54,55,54,55,54,55,54,86,87,86,87,86,87,86,87,86,87,86,87,86,87,86,87,38,56,56,72,73,72,73,72,73,90,91,90,91,90,91,
70,71,70,71,70,71,70,71,70,38,39,38,39,38,39,38,39,38,39,38,39,38,39,38,39,54,40,40,72,89,88,89,88,89,74,75,74,75,74,75,
86,87,86,87,86,87,86,87,86,54,55,54,55,54,55,54,55,54,55,54,55,54,55,54,55,70,56,56,72,73,72,73,72,73,90,91,90,91,90,91,
38,39,38,39,38,39,38,39,38,70,71,70,71,70,71,70,71,70,71,70,71,70,71,70,71,86,40,40,88,89,88,89,88,89,74,75,74,75,74,75,
],},"tilesetId":{"name":"ConandStageTileSet","path":"tilesets/ConandStageTileSet/ConandStageTileSet.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 360,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 640,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}