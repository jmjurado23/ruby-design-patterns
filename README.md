# Ruby Design Patterns

This repo shows some examples of design patterns in ruby language. This is only for learning purposes and may contain failures or code that is not the best. This is intentionally to simplify the comprehension of the patterns.

## Introduction

I have been thinking about a global scenario in where I could show most part of examples. I have decided to apply examples to seller envoironment. But it is easy, we only are going to have invoices with seller or remitent info and line_concepts. this diagram will show you about it:

```mermaid
graph LR
Invoice[Invoice] -- has one --> SellerInfo[SellerInfo]
Invoice[Invoice] -- has one --> BuyerInfo[BuyerInfo]
Invoice[Invoice] -- has many --> LineConcept[LineConcept]
LineConcept[LineConcept] -- has one --> NumberItems[NumberItems]
LineConcept[LineConcept] -- has one --> Concept[Concept]
```

## Content

The patterns that are explained in this repository are:

* [Adapters Pattern](./adapters-pattern)
* [Builder Pattern](./builder-pattern)
* [Command Pattern](./command-pattern)
* [Composite Pattern](./composite-pattern)
* [Decorator Pattern](./decorator-pattern)
* [Facade Pattern](./facade-pattern)
* [Factory Pattern](./factory-pattern)
* [Iterator Pattern](./iterator-pattern)
* [Observer Pattern](./observer-pattern)
* [Proxy Pattern](./proxy-pattern)
* [Singleton Pattern](./singleton-pattern)
* [Strategy Pattern](./strategy-pattern)
* [Template Method Pattern](./template-method-pattern)

## Contributions

Feel free to add improvements or suggesting changes to the repo making requests.

## Author

Juan Manuel Jurado (jmjurado23)

## Thanks to

* I highly recommend read this book to understand design patterns in ruby: **Dessing patterns in Ruby (Russ Olsen)**

* Thanks to [https://refactoring.guru](https://refactoring.guru) for his effort explaining patterns in different languages.