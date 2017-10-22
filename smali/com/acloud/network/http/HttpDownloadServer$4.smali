.class Lcom/acloud/network/http/HttpDownloadServer$4;
.super Ljava/lang/Object;
.source "HttpDownloadServer.java"

# interfaces
.implements Lcom/acloud/jni/HttpJniCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/network/http/HttpDownloadServer;-><init>()V
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
    iput-object p1, p0, Lcom/acloud/network/http/HttpDownloadServer$4;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "errorString"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer$4;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/acloud/network/http/HttpDownloadServer;->access$7(Lcom/acloud/network/http/HttpDownloadServer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 227
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 228
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 229
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "filePath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v2, "errorString"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "errorCode"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 233
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer$4;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/acloud/network/http/HttpDownloadServer;->access$7(Lcom/acloud/network/http/HttpDownloadServer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    return-void
.end method

.method public downloadFinish(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadServer$4;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # invokes: Lcom/acloud/network/http/HttpDownloadServer;->onFinish(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/acloud/network/http/HttpDownloadServer;->access$8(Lcom/acloud/network/http/HttpDownloadServer;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public downloadProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "downloadProgress"    # Ljava/lang/String;
    .param p3, "fileSize"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer$4;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/acloud/network/http/HttpDownloadServer;->access$7(Lcom/acloud/network/http/HttpDownloadServer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 209
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "filePath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "downloadProgress"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v2, "fileSize"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 215
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer$4;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/acloud/network/http/HttpDownloadServer;->access$7(Lcom/acloud/network/http/HttpDownloadServer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method

.method public downloadSpeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "speed"    # Ljava/lang/String;
    .param p3, "passedTime"    # Ljava/lang/String;
    .param p4, "remainingTime"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer$4;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/acloud/network/http/HttpDownloadServer;->access$7(Lcom/acloud/network/http/HttpDownloadServer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 194
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "filePath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "speed"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "passedTime"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "remainingTime"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 201
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer$4;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/acloud/network/http/HttpDownloadServer;->access$7(Lcom/acloud/network/http/HttpDownloadServer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

.method public initFinish()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadServer$4;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/acloud/network/http/HttpDownloadServer;->access$9(Lcom/acloud/network/http/HttpDownloadServer;Z)V

    .line 240
    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;
    invoke-static {}, Lcom/acloud/network/http/HttpDownloadServer;->access$5()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadServer$4;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mDownloadDataCacheS:Ljava/util/List;
    invoke-static {}, Lcom/acloud/network/http/HttpDownloadServer;->access$5()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    # invokes: Lcom/acloud/network/http/HttpDownloadServer;->download(Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V
    invoke-static {v1, v0}, Lcom/acloud/network/http/HttpDownloadServer;->access$6(Lcom/acloud/network/http/HttpDownloadServer;Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V

    .line 243
    :cond_0
    return-void
.end method
