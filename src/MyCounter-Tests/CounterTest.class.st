Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'MyCounter-Tests'
}

{ #category : #tests }
CounterTest >> testAlternateCreationMethod [
	self assert: ((Counter startingAt: 10) increment; count) equals: 11
]

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	| counter |
	counter := Counter new count: 5.
	self assert: counter count equals: 5
]

{ #category : #tests }
CounterTest >> testCounterStartingAt [
	self assert: (Counter startingAt: 5) count equals: 5
]

{ #category : #tests }
CounterTest >> testDecrement [
	| counter |
	counter := Counter new count: 5.
	counter decrement; decrement.
	self assert: counter count equals: 3
]

{ #category : #tests }
CounterTest >> testIncrement [
	| counter |
	counter := Counter new count: 1.
	counter increment; increment.
	self assert: counter count equals: 3
]

{ #category : #tests }
CounterTest >> testInitialize [
	self assert: Counter new count equals: 0
]

{ #category : #tests }
CounterTest >> testPrintOn [
	self assert: Counter new printString equals: 'a Counter with value: 0'.
	self assert: (Counter startingAt: 4) printString equals: 'a Counter with value: 4'
]
