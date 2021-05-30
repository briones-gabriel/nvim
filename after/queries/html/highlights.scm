((attribute
    (attribute_name)
    (quoted_attribute_value (attribute_value) @javascript)) @property
    (#lua-match? @property "^:[a-zA-Z]+=.*$")
)

((attribute
    (attribute_name)
    (quoted_attribute_value (attribute_value) @javascript)) @property
    (#lua-match? @property "^@[a-zA-Z]+=.*$")
)

(
    (element (text) @text)
)

(
    (element (text) @javascript)
    (#lua-match? @javascript "^.*\{\{.*\}\}$")
)
