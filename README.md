## Backend

First time install

```
npm install -g @nestjs/cli
npm install

flutter pub get
flutter run
--> Install dart and flutter exetnsions in VSCode to be able to run

```

```Database
Optional
Download pgadmin and setup database according to datasource.ts

To run backend project
npm run start
remember to
npm install
```

```Swagger
http://localhost:3000/swagger/json - json format
While the application is running, open your browser and navigate to http://localhost:3000/api. You should see the Swagger UI.
```

```Generate nswag code
Backend
npm run generate-api

FrontEnd
dart run swagger_parser
dart run build_runner build -d

dart run build_runner clean
dart run swagger_parser
dart run build_runner build --delete-conflicting-outputs

dart run build_runner clean; dart run swagger_parser; dart run build_runner build --delete-conflicting-outputs


Invoke-WebRequest -Uri http://localhost:3000/api-json -OutFile lib/services/swagger/bigbum.swagger
PS C:\Project\BigBum\bigbum\frontend_flutter> flutter pub run build_runner build --delete-conflicting-outputs
```
