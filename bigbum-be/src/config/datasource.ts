import { DataSource, DataSourceOptions } from 'typeorm';

const config = {
  type: 'postgres',
  host: 'localhost',
  port: 5432,
  database: 'bigbum_db',
  username: 'postgres',
  password: 'admin',
  seeds: [__dirname + '/seeds/*{.ts,.js}'],
  entities: [__dirname + '/../modules/**/*.entity{.ts,.js}'],
  migrations: [__dirname + '/migrations/*{.ts,.js}'],
  migrationsTableName: 'typeorm_migrations',
  logging: process.env.TYPEORM_LOGGING === 'true',
  synchronize: false,
} as DataSourceOptions;

const datasource = new DataSource(config);

export { datasource, config };
