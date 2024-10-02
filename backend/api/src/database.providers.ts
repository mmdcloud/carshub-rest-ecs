import { Sequelize } from 'sequelize-typescript';
import { User } from './users/entities/user.entity';
import { Brand } from './brands/entities/brand.entity';
import { Buyer } from './buyers/entities/buyer.entity';
import { VehicleModel } from './vehicle-models/entities/vehicle-model.entity';
import { VehicleOwner } from './vehicle-owners/entities/vehicle-owner.entity';
import { ExtraService } from './extra-services/entities/extra-service.entity';
import { Order } from './orders/entities/order.entity';
import { Inventory } from './inventory/entities/inventory.entity';

export const databaseProviders = [
    {
        provide: 'SEQUELIZE',
        useFactory: async () => {
            const sequelize = new Sequelize({
                dialect: 'mysql',
                host: '',
                port: 3306,
                username: '',
                password: '',
                database: 'carshub',
            });
            sequelize.addModels([
                User, Brand, Buyer, VehicleModel, VehicleOwner, ExtraService,
                Order, Inventory
            ]);
            await sequelize.sync({
                force: true
            });
            return sequelize;
        },
    },
];
