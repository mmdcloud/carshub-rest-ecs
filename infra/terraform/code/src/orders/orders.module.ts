import { Module } from '@nestjs/common';
import { OrdersService } from './orders.service';
import { OrdersController } from './orders.controller';
import { ordersProviders } from './orders.providers';

@Module({
  controllers: [OrdersController],
  providers: [OrdersService, ...ordersProviders],
})
export class OrdersModule { }
