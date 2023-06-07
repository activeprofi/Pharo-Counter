"
`Counter` is a simple concrete class which supports incrementing and
decrementing.

Its API is
- `decrement` and `increment`
- `count`
Its creation message is `startAt:`
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
	count := anInteger
]

{ #category : #operations }
Counter >> decrement [
	"Decrementin counter with 1"

	count := count - 1
]

{ #category : #operations }
Counter >> increment [
	"Incrementin counter with 1"

	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [
	"Set the initial value of the count to 0"
	
	count := 0
]
