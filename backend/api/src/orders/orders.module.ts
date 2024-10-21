import { Module } from '@nestjs/common';
import { OrdersService } from './orders.service';
import { OrdersController } from './orders.controller';
import { ordersProviders } from './orders.providers';
import { inventoryProviders } from 'src/inventory/inventory.providers';

@Module({
  controllers: [OrdersController],
  providers: [OrdersService, ...ordersProviders,...inventoryProviders],
})
export class OrdersModule { }
