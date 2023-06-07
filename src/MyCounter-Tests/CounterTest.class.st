Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'MyCounter-Tests'
}

{ #category : #tests }
CounterTest >> tesDecrement [
	| counter |
	counter := Counter new count: 5.
	counter decrement; decrement.
	self assert: counter count equals: 3
]

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	| counter |
	counter := Counter new count: 5.
	self assert: counter count equals: 5
]

{ #category : #tests }
CounterTest >> testIncrement [
	| counter |
	counter := Counter new count: 1.
	counter increment; increment.
	self assert: counter count equals: 3
]
