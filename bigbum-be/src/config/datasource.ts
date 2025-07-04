import { DataSource, DataSourceOptions } from 'typeorm';

const config = {
  host: 'ep-floral-bonus-a1rem7lk-pooler.ap-southeast-1.aws.neon.tech',
  database: 'bigbum_db',
  username: 'neondb_owner',
  password: 'npg_POpdDS2B0lxT',
  ssl: {
    rejectUnauthorized: false,
  },
  //   type: 'postgres',
  // host: 'localhost',
  // port: 5432,
  // database: 'bigbum_db',
  // username: 'postgres',
  // password: 'admin',
  seeds: [__dirname + '/seeds/*{.ts,.js}'],
  entities: [__dirname + '/../modules/**/*.entity{.ts,.js}'],
  migrations: [__dirname + '/../database/migrations/*{.ts,.js}'],
  migrationsTableName: 'typeorm_migrations',
  logging: process.env.TYPEORM_LOGGING === 'true',
  synchronize: false,
  // autoLoadEntities: true, // this is important
} as unknown as DataSourceOptions;

const datasource = new DataSource(config);

export { datasource, config };
