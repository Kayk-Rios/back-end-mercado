import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { ProdutoController } from './produto/produto.controller';


@Module({
  imports: [],
  controllers: [AppController,ProdutoController],
  providers: [],
})
export class AppModule {}
