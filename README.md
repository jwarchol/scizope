# scizope
Testing some weirdness to try to understand chained scopes more clearly


````
> 5.times {|i| t = Talk.create; 5.times {|x| s = Speaker.create; t.speakers << s } }
> Talk.where(id: (2..4)).call_talks
````


