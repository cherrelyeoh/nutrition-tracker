// logging.interceptor.ts
import {
  Injectable,
  NestInterceptor,
  ExecutionContext,
  CallHandler,
} from '@nestjs/common';
import { Observable, tap } from 'rxjs';

@Injectable()
export class LoggingInterceptor implements NestInterceptor {
  intercept(context: ExecutionContext, next: CallHandler): Observable<any> {
    const req = context.switchToHttp().getRequest<Request>();
    const { method, url, body } = req;
    const now = Date.now();

    console.log(`➡️ ${method} ${url} | body:`, body);

    return next
      .handle()
      .pipe(
        tap((data) =>
          console.log(
            `⬅️ ${method} ${url} | took ${Date.now() - now}ms | response:`,
            data,
          ),
        ),
      );
  }
}
