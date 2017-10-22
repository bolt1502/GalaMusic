.class public abstract Lcom/acloud/stub/db/AsyncQueryLocalHandler;
.super Landroid/os/Handler;
.source "AsyncQueryLocalHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;,
        Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerHandler;
    }
.end annotation


# static fields
.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AsyncQuery"

.field private static final localLOGV:Z

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field final mDatabaseHelper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/acloud/stub/db/DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->sLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Lcom/acloud/stub/db/DatabaseHelper;)V
    .locals 3
    .param p1, "db"    # Lcom/acloud/stub/db/DatabaseHelper;

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 136
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->mDatabaseHelper:Ljava/lang/ref/WeakReference;

    .line 137
    const-class v2, Lcom/acloud/stub/db/AsyncQueryLocalHandler;

    monitor-enter v2

    .line 138
    :try_start_0
    sget-object v1, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 139
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncQueryWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 142
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->sLooper:Landroid/os/Looper;

    .line 137
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    sget-object v1, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v1}, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 146
    return-void

    .line 137
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final cancelOperation(I)V
    .locals 1
    .param p1, "token"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 149
    new-instance v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerHandler;-><init>(Lcom/acloud/stub/db/AsyncQueryLocalHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 341
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;

    .line 348
    .local v0, "args":Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;
    iget v2, p1, Landroid/os/Message;->what:I

    .line 349
    .local v2, "token":I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 352
    .local v1, "event":I
    packed-switch v1, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 354
    :pswitch_0
    iget-object v4, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {p0, v2, v4, v3}, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0

    .line 358
    :pswitch_1
    iget-object v4, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, v2, v4, v3}, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 362
    :pswitch_2
    iget-object v4, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 366
    :pswitch_3
    iget-object v4, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 337
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 311
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 298
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 324
    return-void
.end method

.method public final startDelete(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 274
    iget-object v2, p0, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 275
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 277
    new-instance v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;-><init>()V

    .line 278
    .local v0, "args":Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;
    iput-object p0, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 279
    iput-object p3, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->table:Ljava/lang/String;

    .line 280
    iput-object p2, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 281
    iput-object p4, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 282
    iput-object p5, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 283
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    iget-object v2, p0, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 286
    return-void
.end method

.method public final startInsert(ILjava/lang/Object;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 220
    iget-object v2, p0, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 221
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 223
    new-instance v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;-><init>()V

    .line 224
    .local v0, "args":Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;
    iput-object p0, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 225
    iput-object p3, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->table:Ljava/lang/String;

    .line 226
    iput-object p2, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 227
    iput-object p4, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 228
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    iget-object v2, p0, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 231
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v2, p0, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 179
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 181
    new-instance v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;-><init>()V

    .line 182
    .local v0, "args":Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;
    iput-object p0, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 183
    iput-object p3, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->table:Ljava/lang/String;

    .line 184
    iput-object p4, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 185
    iput-object p5, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 186
    iput-object p6, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 187
    iput-object p7, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 188
    iput-object p2, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 189
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    iget-object v2, p0, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return-void
.end method

.method public final startUpdate(ILjava/lang/Object;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 246
    iget-object v2, p0, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 247
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 249
    new-instance v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;-><init>()V

    .line 250
    .local v0, "args":Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;
    iput-object p0, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 251
    iput-object p3, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->table:Ljava/lang/String;

    .line 252
    iput-object p2, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 253
    iput-object p4, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 254
    iput-object p5, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 255
    iput-object p6, v0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 256
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 258
    iget-object v2, p0, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    return-void
.end method
