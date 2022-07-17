# frozen_string_literal: true

# Реализуйте функцию merge_all(), которая принимает на вход любое количество хешей и
# сливает (мержит) их в один хеш, который возвращается наружу

def merge_all first_hash, *rest_hashes
  first_hash.update(*rest_hashes)
end


hash1 = { key: 'value' }
hash2 = { key2: 'value2' }
hash3 = { key3: 'value3', key: 'new value' }
hash = merge_all(hash1, hash2, hash3)

print hash
# { key: 'new value', key2: 'value2', key3: 'value3' }
