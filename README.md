# Leaky rails app

This is micro rails 3 app with one controller leaking (guess which :) ).

## Usage

```

rails server
```


in another terminal tab:

```

curl http://localhost:3000
curl http://localhost:3000
curl http://localhost:3000/count
curl http://localhost:3000
curl http://localhost:3000
curl http://localhost:3000/count
echo Notice leaks, so run dump
curl http://localhost:3000/dump
grep '"name":"LeakController" dump.json | grep T_CLASS'
```

and so on.