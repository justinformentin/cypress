﻿note
	description: "[
		Object representing a video variant in an Array of different encodings/streams of the video. 
		At least one variant is returned for each video entry.

   "variants": [
         {
           "bitrate": 2176000,
           "content_type": "video\/mp4",
           "url": "https:\/\/video.twimg.com\/ext_tw_video\/560070131976392705\/pu\/vid\/1280x720\/c4E56sl91ZB7cpYi.mp4"
         },
         {
           "bitrate": 320000,
           "content_type": "video\/mp4",
           "url": "https:\/\/video.twimg.com\/ext_tw_video\/560070131976392705\/pu\/vid\/320x180\/nXXsvs7vOhcMivwl.mp4"
         },
         {
           "bitrate": 832000,
           "content_type": "video\/mp4",
           "url": "https:\/\/video.twimg.com\/ext_tw_video\/560070131976392705\/pu\/vid\/640x360\/vmLr5JlVs2kBLrXS.mp4"
         },
         {
           "content_type": "application\/x-mpegURL",
           "url": "https:\/\/video.twimg.com\/ext_tw_video\/560070131976392705\/pu\/pl\/r1kgzh5PmLgium3-.m3u8"
         }
       ]
     }
	]"
	date: "$Date$"
	revision: "$Revision$"

class
	TWITTER_VIDEO_VARIANTS


feature -- Access

	url: detachable STRING
			-- `url'

	content_type: detachable STRING
			-- `content_type' of the current media.
			-- Flash    .flv	video/x-flv
			-- MPEG-4	.mp4	video/mp4

	bitrate: detachable INTEGER
			-- The number of bits or the amount of data that are processed over a certain amount of time.

feature -- Element change

	set_url (an_url: like url)
			-- Assign `url' with `an_url'.
		do
			url := an_url
		ensure
			url_assigned: url = an_url
		end

	set_content_type (a_content_type: like content_type)
			-- Assign `content_type' with `a_content_type'.
		do
			content_type := a_content_type
		ensure
			contenty_type_assigned: content_type = a_content_type
		end

	set_bitrate (a_bitrate: like bitrate)
			-- Assign `bitrate' with `a_bitrate'.
		do
			bitrate := a_bitrate
		ensure
			bitrate_assigned: bitrate = a_bitrate
		end

end
