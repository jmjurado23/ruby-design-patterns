# Composite Pattern

This pattern lets us group actions or tasks to do it in one time. It is good when you want to define a serie of tasks to do specific work over the data.

```mermaid
classDiagram
    Component <|-- Leaf
    Component <|-- Composite
    Component <-- Composite

    class Component{
        action()
    }

    class Leaf{
        action()
    }

  class Composite{
        @subcomponents[]
        action()
    }
```

In this example, we have actions for add a tax or to add a discount. This tasks can be added to the composite to define specific composites for each situation in our platform

```mermaid
classDiagram
    Operation <|-- DiscountOperation
    Operation <|-- TaxOperation
    Operation <|-- CompositeOperation
    Operation <-- CompositeOperation

    class Operation{
        calculate()
    }

    class DiscountOperation{
        calculate()
    }

    class TaxOperation{
        calculate()
    }

  class CompositeOperation{
        @operations[]
        calculate()
    }
```

## Try it

In your console execute:
```bash
ruby composite-pattern/working-example/example.rb
```