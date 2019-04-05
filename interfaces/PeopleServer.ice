//******************************************************************
// 
//  Generated by RoboCompDSL
//  
//  File name: IDSLs/PeopleServer.ice
//  Source: IDSLs/PeopleServer.idsl
//  
//****************************************************************** 
#ifndef ROBOCOMPPEOPLESERVER_ICE
#define ROBOCOMPPEOPLESERVER_ICE
module RoboCompPeopleServer
{
	exception HardwareFailedException{ string what; };
	sequence <byte> ImgType;
	struct TImage
	{
		 int width;
		 int height;
		 int depth;
		 ImgType image;
	};
	struct KeyPoint
	{
		 int x;
		 int y;
		 float score;
	};
	dictionary <string, KeyPoint> TJoints;
	struct Person
	{
		 int id;
		 TJoints joints;
	};
	sequence <Person> People;
	interface PeopleServer
	{
		People processImage (TImage img) throws HardwareFailedException;
	};
};

#endif
