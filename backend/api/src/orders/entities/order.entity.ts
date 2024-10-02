import { Table, Column, Model, ForeignKey, BelongsTo } from 'sequelize-typescript';
import { Buyer } from 'src/buyers/entities/buyer.entity';
import { Inventory } from 'src/inventory/entities/inventory.entity';

@Table
export class Order extends Model {
    @Column
    date: string;

    @ForeignKey(() => Buyer)
    @Column
    buyerId: number;

    @BelongsTo(() => Buyer)
    buyer: Buyer;

    @Column
    discount: string;

    @Column
    totalAmount: string;

    @ForeignKey(() => Inventory)
    @Column
    inventoryId: number;

    @BelongsTo(() => Inventory)
    inventory: Inventory;
}