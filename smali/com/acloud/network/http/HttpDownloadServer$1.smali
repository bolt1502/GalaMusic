.class Lcom/acloud/network/http/HttpDownloadServer$1;
.super Landroid/os/Handler;
.source "HttpDownloadServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/network/http/HttpDownloadServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/network/http/HttpDownloadServer;


# direct methods
.method constructor <init>(Lcom/acloud/network/http/HttpDownloadServer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/network/http/HttpDownloadServer$1;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 68
    .local v8, "data":Landroid/os/Bundle;
    const-string v2, "filePath"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "filePath"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$1;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # invokes: Lcom/acloud/network/http/HttpDownloadServer;->getCurDownloadTask(Ljava/lang/String;)Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
    invoke-static {v2, v3}, Lcom/acloud/network/http/HttpDownloadServer;->access$0(Lcom/acloud/network/http/HttpDownloadServer;Ljava/lang/String;)Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    move-result-object v17

    .line 71
    .local v17, "task":Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 131
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v17    # "task":Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 132
    :cond_1
    return-void

    .line 73
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v17    # "task":Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
    :pswitch_0
    if-eqz v17, :cond_0

    .line 74
    const-string v2, "speed"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 75
    .local v16, "speed":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 76
    .local v14, "nSpeed":J
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->callback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    invoke-static {v14, v15}, Lcom/acloud/network/http/HttpUtils;->formatSpeed(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v2, v14, v15, v0}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onSpeed(JLjava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v14    # "nSpeed":J
    .end local v16    # "speed":Ljava/lang/String;
    :pswitch_1
    if-eqz v17, :cond_0

    .line 81
    const-string v2, "fileSize"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 82
    .local v12, "fileSize":Ljava/lang/String;
    const-string v2, "downloadProgress"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, "downloadProgress":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 84
    .local v6, "nFileSize":J
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    mul-long v20, v20, v6

    const-wide/16 v22, 0x64

    div-long v4, v20, v22

    .line 85
    .local v4, "nProgress":J
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->callback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    invoke-interface/range {v2 .. v7}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onProgressUpdate(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 89
    .end local v4    # "nProgress":J
    .end local v6    # "nFileSize":J
    .end local v9    # "downloadProgress":Ljava/lang/String;
    .end local v12    # "fileSize":Ljava/lang/String;
    :pswitch_2
    if-eqz v17, :cond_0

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$1;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;
    invoke-static {v2}, Lcom/acloud/network/http/HttpDownloadServer;->access$1(Lcom/acloud/network/http/HttpDownloadServer;)Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$1;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;
    invoke-static {v2}, Lcom/acloud/network/http/HttpDownloadServer;->access$1(Lcom/acloud/network/http/HttpDownloadServer;)Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v2, v0, v1}, Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;->onFinish(Ljava/lang/String;Z)V

    .line 93
    :cond_2
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->md5:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v3}, Lcom/acloud/utils/MD5;->getMD5Sun(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->md5:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    :cond_3
    :try_start_0
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->totalSize:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 99
    .local v18, "totalSize":J
    const-wide/16 v20, 0x0

    cmp-long v2, v18, v20

    if-lez v2, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    cmp-long v2, v18, v20

    if-nez v2, :cond_1

    .line 106
    .end local v18    # "totalSize":J
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v20, "filePath:"

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->callback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    invoke-interface {v2, v3}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onFinish(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :pswitch_3
    if-eqz v17, :cond_0

    .line 113
    const-string v2, "errorString"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 114
    .local v11, "errorString":Ljava/lang/String;
    const-string v2, "errorCode"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, "errorCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v20, "errorString:"

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v20, " errorCode:"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 116
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 117
    .local v13, "nCode":I
    const/4 v2, 0x5

    if-ne v2, v13, :cond_5

    .line 119
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->callback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-interface {v2, v0, v1, v3}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onCancel(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_5
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->callback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    invoke-interface {v2, v3, v13, v11}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$1;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;
    invoke-static {v2}, Lcom/acloud/network/http/HttpDownloadServer;->access$1(Lcom/acloud/network/http/HttpDownloadServer;)Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acloud/network/http/HttpDownloadServer$1;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;
    invoke-static {v2}, Lcom/acloud/network/http/HttpDownloadServer;->access$1(Lcom/acloud/network/http/HttpDownloadServer;)Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v2, v0, v1}, Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;->onFinish(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 103
    .end local v10    # "errorCode":Ljava/lang/String;
    .end local v11    # "errorString":Ljava/lang/String;
    .end local v13    # "nCode":I
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
