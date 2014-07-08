users Cookbook
====================
This cookbook makes users.

Requirements
------------

#### cookbook
- `user` - users needs "user" official(opscode) cookbook

Data Bags
----------
This cookbook create users from "users" data_bag.

#### users::100.json
```json
{
  "id": "100",
  "username": "hogehoge",
  "comment": "hoge user",
  "home": "/home/hoge",
  "password": "$1$WK4M.fB9$ieoValIoDwsoh5UBkFtN80",
  "uid": 100,
  "gid": 100,
  "ssh_keys": "ssh-rsa AAA... ="
}
```

Usage
-----
#### users::default
Just include `users` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[users]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
