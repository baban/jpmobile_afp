# JpmobileAfp

jpmobileにガラホ(android feature phone)であるかどうかの android_smart_phone? メソッドを継ぎ足します。

## Installation

Gemfileに一行を継ぎ足してbundle installして下さい。

```ruby
gem 'jpmobile_afp'
```

## Usage

次の様に書く事で、ガラホであるかどうか判別してくれます。

```ruby
# trueならガラホ
request.android_feature_phone?
```
