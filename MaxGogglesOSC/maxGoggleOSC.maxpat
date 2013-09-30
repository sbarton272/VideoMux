{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x64"
		}
,
		"rect" : [ 0.0, 42.0, 1262.0, 640.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 276.044952, 151.399475, 81.0, 20.0 ],
					"text" : "route /accxyz"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 22.355526,
					"frgb" : 0.0,
					"id" : "obj-4",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 813.544983, 326.399475, 352.0, 84.0 ],
					"text" : "connect this object to the GUI object that you want max to remember"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 28.161739,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 892.544983, 423.399475, 122.0, 39.0 ],
					"restore" : 					{
						"flonum" : [ 6.0 ],
						"flonum[1]" : [ 12.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u713003321"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 22.355526,
					"frgb" : 0.0,
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 675.044983, 497.399475, 114.0, 32.0 ],
					"text" : "decreases"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 22.355526,
					"frgb" : 0.0,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 534.044983, 497.399475, 105.0, 32.0 ],
					"text" : "increases"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.351236,
					"id" : "obj-29",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 675.044983, 538.399475, 73.0, 30.0 ],
					"varname" : "flonum"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 20.351236,
					"id" : "obj-28",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 562.044983, 538.399475, 73.0, 30.0 ],
					"varname" : "flonum[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 175.544952, 702.399475, 150.0, 140.0 ],
					"setstyle" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"int" : 1,
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 404.544952, 475.399475, 81.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 28.161739,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 511.544952, 604.399475, 131.0, 39.0 ],
					"text" : "slide 5. 5."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 422.544952, 900.399475, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 448.544952, 801.399475, 110.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 28.161739,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 448.544952, 735.399475, 91.0, 39.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 28.161739,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 448.544952, 681.399475, 274.0, 39.0 ],
					"text" : "scale -1. 1. 200. 700."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 675.044983, 448.399475, 19.0, 20.0 ],
					"text" : "z"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 504.044952, 448.399475, 19.0, 20.0 ],
					"text" : "y"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 326.044952, 448.399475, 19.0, 20.0 ],
					"text" : "x"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 609.544983, 288.399475, 150.0, 140.0 ],
					"setminmax" : [ -2.0, 0.0 ],
					"setstyle" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 448.544952, 288.399475, 150.0, 140.0 ],
					"setstyle" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 276.044952, 288.399475, 150.0, 140.0 ],
					"setstyle" : 2
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 28.161739,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 276.044952, 207.399475, 195.0, 39.0 ],
					"text" : "unpack 1. 1. 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 19.055616,
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 541.044983, 138.399475, 413.0, 26.0 ],
					"text" : "/accxyz 0.049576 -0.034637 -0.997223"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 167.044952, 132.399475, 58.0, 58.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 28.161739,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 276.044952, 72.399475, 218.0, 39.0 ],
					"text" : "udpreceive 8000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1155.544922, 806.939453, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1071.544922, 852.939453, 96.0, 18.0 ],
					"text" : "digitalWrite 4 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1017.544922, 806.939453, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 941.544983, 852.939453, 96.0, 18.0 ],
					"text" : "digitalWrite 3 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 907.544983, 806.939453, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 823.544983, 852.939453, 96.0, 18.0 ],
					"text" : "digitalWrite 2 $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1041.044922, 753.939392, 295.0, 18.0 ],
					"text" : "pinMode 2 1, pinMode 3 1, pinMode 4 1, pinMode 5 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1041.044922, 890.939453, 56.0, 20.0 ],
					"text" : "maxuino"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-125::obj-36::obj-126" : [ "value[15]", "value", 0 ],
			"obj-1::obj-125::obj-690::obj-126" : [ "value[30]", "value", 0 ],
			"obj-1::obj-125::obj-649::obj-126" : [ "value[60]", "value", 0 ],
			"obj-1::obj-125::obj-757::obj-126" : [ "value[16]", "value", 0 ],
			"obj-1::obj-125::obj-678::obj-126" : [ "value[48]", "value", 0 ],
			"obj-1::obj-125::obj-9::obj-126" : [ "value[1]", "value", 0 ],
			"obj-1::obj-125::obj-692::obj-126" : [ "value[32]", "value", 0 ],
			"obj-1::obj-125::obj-694::obj-126" : [ "value[34]", "value", 0 ],
			"obj-1::obj-125::obj-16" : [ "live.text", "live.text", 0 ],
			"obj-1::obj-125::obj-652::obj-126" : [ "value[52]", "value", 0 ],
			"obj-1::obj-125::obj-28::obj-126" : [ "value[9]", "value", 0 ],
			"obj-1::obj-125::obj-642::obj-126" : [ "value[67]", "value", 0 ],
			"obj-1::obj-125::obj-717::obj-126" : [ "value[27]", "value", 0 ],
			"obj-1::obj-125::obj-671::obj-126" : [ "value[41]", "value", 0 ],
			"obj-1::obj-125::obj-727::obj-126" : [ "value[29]", "value", 0 ],
			"obj-1::obj-125::obj-667::obj-126" : [ "value[59]", "value", 0 ],
			"obj-1::obj-125::obj-672::obj-126" : [ "value[42]", "value", 0 ],
			"obj-1::obj-125::obj-17::obj-126" : [ "value[3]", "value", 0 ],
			"obj-1::obj-125::obj-691::obj-126" : [ "value[31]", "value", 0 ],
			"obj-1::obj-125::obj-758::obj-126" : [ "value[17]", "value", 0 ],
			"obj-1::obj-125::obj-687::obj-126" : [ "value[49]", "value", 0 ],
			"obj-1::obj-125::obj-18::obj-126" : [ "value[4]", "value", 0 ],
			"obj-1::obj-125::obj-651::obj-126" : [ "value[51]", "value", 0 ],
			"obj-1::obj-125::obj-19::obj-126" : [ "value[5]", "value", 0 ],
			"obj-1::obj-125::obj-643::obj-126" : [ "value[66]", "value", 0 ],
			"obj-1::obj-125::obj-714::obj-126" : [ "value[24]", "value", 0 ],
			"obj-1::obj-125::obj-29::obj-126" : [ "value[10]", "value", 0 ],
			"obj-1::obj-125::obj-716::obj-126" : [ "value[26]", "value", 0 ],
			"obj-1::obj-125::obj-656::obj-126" : [ "value[56]", "value", 0 ],
			"obj-1::obj-125::obj-676::obj-126" : [ "value[46]", "value", 0 ],
			"obj-1::obj-125::obj-718::obj-126" : [ "value[28]", "value", 0 ],
			"obj-1::obj-125::obj-658::obj-126" : [ "value[58]", "value", 0 ],
			"obj-1::obj-125::obj-34::obj-126" : [ "value[14]", "value", 0 ],
			"obj-1::obj-125::obj-677::obj-126" : [ "value[47]", "value", 0 ],
			"obj-1::obj-125::obj-675::obj-126" : [ "value[45]", "value", 0 ],
			"obj-1::obj-125::obj-646::obj-126" : [ "value[63]", "value", 0 ],
			"obj-1::obj-125::obj-650::obj-126" : [ "value[50]", "value", 0 ],
			"obj-1::obj-125::obj-27::obj-126" : [ "value[8]", "value", 0 ],
			"obj-1::obj-125::obj-644::obj-126" : [ "value[65]", "value", 0 ],
			"obj-1::obj-125::obj-713::obj-126" : [ "value[23]", "value", 0 ],
			"obj-1::obj-125::obj-715::obj-126" : [ "value[25]", "value", 0 ],
			"obj-1::obj-125::obj-655::obj-126" : [ "value[55]", "value", 0 ],
			"obj-1::obj-125::obj-31::obj-126" : [ "value[11]", "value", 0 ],
			"obj-1::obj-125::obj-707::obj-126" : [ "value[39]", "value", 0 ],
			"obj-1::obj-125::obj-657::obj-126" : [ "value[57]", "value", 0 ],
			"obj-1::obj-125::obj-759::obj-126" : [ "value[18]", "value", 0 ],
			"obj-1::obj-125::obj-670::obj-126" : [ "value[40]", "value", 0 ],
			"obj-1::obj-125::obj-768::obj-126" : [ "value[19]", "value", 0 ],
			"obj-1::obj-125::obj-11::obj-126" : [ "value[2]", "value", 0 ],
			"obj-1::obj-125::obj-647::obj-126" : [ "value[62]", "value", 0 ],
			"obj-1::obj-125::obj-645::obj-126" : [ "value[64]", "value", 0 ],
			"obj-1::obj-125::obj-712::obj-126" : [ "value[22]", "value", 0 ],
			"obj-1::obj-125::obj-8::obj-126" : [ "value", "value", 0 ],
			"obj-1::obj-125::obj-696::obj-126" : [ "value[36]", "value", 0 ],
			"obj-1::obj-125::obj-654::obj-126" : [ "value[54]", "value", 0 ],
			"obj-1::obj-125::obj-698::obj-126" : [ "value[38]", "value", 0 ],
			"obj-1::obj-125::obj-504::obj-126" : [ "value[69]", "value", 0 ],
			"obj-1::obj-125::obj-32::obj-126" : [ "value[12]", "value", 0 ],
			"obj-1::obj-125::obj-673::obj-126" : [ "value[43]", "value", 0 ],
			"obj-1::obj-125::obj-33::obj-126" : [ "value[13]", "value", 0 ],
			"obj-1::obj-125::obj-674::obj-126" : [ "value[44]", "value", 0 ],
			"obj-1::obj-125::obj-20::obj-126" : [ "value[6]", "value", 0 ],
			"obj-1::obj-125::obj-648::obj-126" : [ "value[61]", "value", 0 ],
			"obj-1::obj-125::obj-710::obj-126" : [ "value[20]", "value", 0 ],
			"obj-1::obj-125::obj-24::obj-126" : [ "value[7]", "value", 0 ],
			"obj-1::obj-125::obj-693::obj-126" : [ "value[33]", "value", 0 ],
			"obj-1::obj-125::obj-711::obj-126" : [ "value[21]", "value", 0 ],
			"obj-1::obj-125::obj-695::obj-126" : [ "value[35]", "value", 0 ],
			"obj-1::obj-125::obj-653::obj-126" : [ "value[53]", "value", 0 ],
			"obj-1::obj-125::obj-697::obj-126" : [ "value[37]", "value", 0 ],
			"obj-1::obj-125::obj-641::obj-126" : [ "value[68]", "value", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "maxuino.maxpat",
				"bootpath" : "/Users/Spencer Barton/Dropbox/CMU/Coding/Max Patches/maxuino_b016",
				"patcherrelativepath" : "../../../../../Coding/Max Patches/maxuino_b016",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino.js",
				"bootpath" : "/Users/Spencer Barton/Dropbox/CMU/Coding/Max Patches/maxuino_b016/support",
				"patcherrelativepath" : "../../../../../Coding/Max Patches/maxuino_b016/support",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-gui.maxpat",
				"bootpath" : "/Users/Spencer Barton/Dropbox/CMU/Coding/Max Patches/maxuino_b016/support",
				"patcherrelativepath" : "../../../../../Coding/Max Patches/maxuino_b016/support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-Dpin-gui.maxpat",
				"bootpath" : "/Users/Spencer Barton/Dropbox/CMU/Coding/Max Patches/maxuino_b016/support",
				"patcherrelativepath" : "../../../../../Coding/Max Patches/maxuino_b016/support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Teensy++.png",
				"bootpath" : "/Users/Spencer Barton/Dropbox/CMU/Coding/Max Patches/maxuino_b016/hardware",
				"patcherrelativepath" : "../../../../../Coding/Max Patches/maxuino_b016/hardware",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-hardware.txt",
				"bootpath" : "/Users/Spencer Barton/Dropbox/CMU/Coding/Max Patches/maxuino_b016/hardware",
				"patcherrelativepath" : "../../../../../Coding/Max Patches/maxuino_b016/hardware",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-debug.maxpat",
				"bootpath" : "/Users/Spencer Barton/Dropbox/CMU/Coding/Max Patches/maxuino_b016/support",
				"patcherrelativepath" : "../../../../../Coding/Max Patches/maxuino_b016/support",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
