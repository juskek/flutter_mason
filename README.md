# flutter_mason

My repo for flutter mason bricks

## How to use

1. dart pub global activate mason_cli
2. Add brick from this repo to local cache in global scope: `mason add -g <brick_name> --git-url https://github.com/juskek/flutter_mason.git --git-path bricks/<brick_name>`
3. Confirm installation: `mason ls -g`
4. Use it: `mason make <brick_name>`


## Making code changes on dev branch
E.g., for app brick
```
git add .
git commit -m "update"
git push

mason remove -g app
mason add -g app --git-url https://github.com/juskek/flutter_mason.git --git-path bricks/app
mason ls -g
```

## Using bricks on dev branch
```
git add .
git commit -m "update"
git push

mason remove -g model_di
mason add -g model_di --git-url https://github.com/juskek/flutter_mason.git --git-path bricks/model_di --git-ref dev
mason ls -g
```

## Specific Usage
### New App
1. Init files: 
```
flutter create example_app 
cd example_app
mason make app --on-conflict overwrite
flutter pub get
flutter pub run flutter_flavorizr

flutter run --flavor flav_dev -t lib/main_flav_dev.dart
```

## Model files for Dependency Injection
```
mason make model_di

```