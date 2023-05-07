main:
  - name: Home
    url: '/'
    weight: 1
    params:
      icon:
        vendor: bootstrap
        name: house
  - name: FooBar
    identifier: foobar
    params:
      header: The header of FooBar
      icon:
        vendor: bootstrap
        name: rocket-takeoff
  - parent: foobar
    name: Foo
    url: "#foo"
    weight: 1
    params:
      description: Foo description.
      icon:
        vendor: bootstrap
        name: heart-fill
        color: red
  - parent: foobar
    weight: 2
    params:
      divider: true
  - parent: foobar
    weight: 3
    name: Bar
    url: '#bar'
    params:
      description: Bar description.
      icon:
        vendor: bootstrap
        name: toggle-off
        color: '#198754'
