# Factory Pattern

This pattern lets us create elements of a type, helping us from a tool. This tool is called factory and can create different versiones of the original one.

```mermaid
classDiagram
    Creator <|-- ConcreteCreatorA
    Creator <|-- ConcreteCreatorB
    Product1 <-- ConcreteCreatorA
    Product2 <-- ConcreteCreatorB
    Product <|-- Product1
    Product <|-- Product2

    class Creator{
        factory_method()
    }

    class ConcreteCreatorA{
        factory_method()
    }

    class ConcreteCreatorB{
        factory_method()
    }
```

In this example, we have two factories: simple and demo. Each one build differents versions of invoices. Both have to extend from factory abstract class.

There are many ways of use factories.

```mermaid
classDiagram
    Factory <|-- SimpleInvoiceFactory
    Factory <|-- DemoInvoiceFactory
    Invoice <-- SimpleInvoiceFactory
    Invoice <-- DemoInvoiceFactory

    class Factory{
        self.create()
    }

    class SimpleInvoiceFactory{
        self.create()
    }

    class DemoInvoiceFactory{
        self.create()
    }
```


## Try it

In your console execute:
```bash
ruby factory-pattern/working-example/example.rb
```