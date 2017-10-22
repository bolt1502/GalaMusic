.class Lcom/acloud/network/http/HttpDownloadServer$2;
.super Ljava/lang/Object;
.source "HttpDownloadServer.java"

# interfaces
.implements Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;


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
    iput-object p1, p0, Lcom/acloud/network/http/HttpDownloadServer$2;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .prologue
    .line 140
    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/acloud/network/http/HttpDownloadServer;->access$2()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadServer$2;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;
    invoke-static {v1}, Lcom/acloud/network/http/HttpDownloadServer;->access$3(Lcom/acloud/network/http/HttpDownloadServer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 140
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadServer$2;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;
    invoke-static {v1}, Lcom/acloud/network/http/HttpDownloadServer;->access$3(Lcom/acloud/network/http/HttpDownloadServer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadServer$2;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadServer$2;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;
    invoke-static {v1}, Lcom/acloud/network/http/HttpDownloadServer;->access$3(Lcom/acloud/network/http/HttpDownloadServer;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    # invokes: Lcom/acloud/network/http/HttpDownloadServer;->downloadSmallFile(Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V
    invoke-static {v2, v1}, Lcom/acloud/network/http/HttpDownloadServer;->access$4(Lcom/acloud/network/http/HttpDownloadServer;Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V

    .line 155
    :cond_0
    return-void

    .line 143
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadServer$2;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;
    invoke-static {v1}, Lcom/acloud/network/http/HttpDownloadServer;->access$3(Lcom/acloud/network/http/HttpDownloadServer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;

    iget-object v1, v1, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->url:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadServer$2;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    # getter for: Lcom/acloud/network/http/HttpDownloadServer;->mSmallDownloadDataCaches:Ljava/util/List;
    invoke-static {v1}, Lcom/acloud/network/http/HttpDownloadServer;->access$3(Lcom/acloud/network/http/HttpDownloadServer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 142
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
