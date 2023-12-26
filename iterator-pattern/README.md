# Iterator Pattern

This pattern lets us iterate over elements. We can define a element that manage the iterators. This element should implement methods to add, compare or make operations over the elemenents.

```mermaid
classDiagram
    Iterator <-- Client
    IterableCollection <-- Client
    Iterator <-- IterableCollection
    IterableCollection <-- Iterator

    class Iterator{
        collection
    }

    class IterableCollection{
        create_iterator()
    }

    class Client{
    }
```

In this example we use invoice like an iterator of line concepts. Ruby have the module Enumerable that give by default a big amount of methods for iterables.

```mermaid
classDiagram
    LineConcept <-- Invoice

    class LineConcept{
      include Enumerable
    }

    class Invoice{
       @line_concepts
       each
    }
```

## Try it

In your console execute:
```bash
ruby iterator-pattern/working-example/example.rb
```