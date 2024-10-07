import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { DbModule } from './db/db.module';
import { ProdutoModule } from './produto/produto.module';



@Module({
  imports: [ProdutoModule,DbModule],
  controllers: [AppController],
  providers: [],
})
export class AppModule {}
