*kiwi-ui
kiwiIcon
	"Private - Generated method"
	^icons 
			at: #kiwiIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self kiwiIconContents readStream) ].