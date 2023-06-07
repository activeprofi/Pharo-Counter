Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'MyCounter-Tests'
}

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	| counter |
	counter := Counter new count: 5.
	self assert: counter count equals: 5
]
