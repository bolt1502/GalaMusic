.class public Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "AsyncQueryLocalHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/db/AsyncQueryLocalHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/db/AsyncQueryLocalHandler;


# direct methods
.method public constructor <init>(Lcom/acloud/stub/db/AsyncQueryLocalHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerHandler;->this$0:Lcom/acloud/stub/db/AsyncQueryLocalHandler;

    .line 68
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerHandler;->this$0:Lcom/acloud/stub/db/AsyncQueryLocalHandler;

    iget-object v1, v1, Lcom/acloud/stub/db/AsyncQueryLocalHandler;->mDatabaseHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/db/DatabaseHelper;

    .line 74
    .local v0, "db":Lcom/acloud/stub/db/DatabaseHelper;
    if-nez v0, :cond_0

    .line 75
    const-string v1, "QQ"

    const-string v2, "WorkerHandler db is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;

    .line 81
    .local v8, "args":Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;
    iget v13, p1, Landroid/os/Message;->what:I

    .line 82
    .local v13, "token":I
    iget v11, p1, Landroid/os/Message;->arg1:I

    .line 84
    .local v11, "event":I
    packed-switch v11, :pswitch_data_0

    .line 121
    :goto_1
    iget-object v1, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 122
    .local v12, "reply":Landroid/os/Message;
    iput-object v8, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v12, Landroid/os/Message;->arg1:I

    .line 130
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 88
    .end local v12    # "reply":Landroid/os/Message;
    :pswitch_0
    :try_start_0
    iget-object v1, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->table:Ljava/lang/String;

    iget-object v2, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 89
    iget-object v3, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 90
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 88
    invoke-virtual/range {v0 .. v7}, Lcom/acloud/stub/db/DatabaseHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 93
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 94
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_1
    :goto_2
    iput-object v9, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 96
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 97
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "AsyncQuery"

    const-string v2, "Exception thrown during handling EVENT_ARG_QUERY"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/4 v9, 0x0

    .restart local v9    # "cursor":Landroid/database/Cursor;
    goto :goto_2

    .line 105
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->table:Ljava/lang/String;

    iget-object v2, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/acloud/stub/db/DatabaseHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 109
    :pswitch_2
    iget-object v1, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->table:Ljava/lang/String;

    iget-object v2, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v3, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 110
    iget-object v4, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/acloud/stub/db/DatabaseHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 114
    :pswitch_3
    iget-object v1, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->table:Ljava/lang/String;

    iget-object v2, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v3, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/acloud/stub/db/DatabaseHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v8, Lcom/acloud/stub/db/AsyncQueryLocalHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
