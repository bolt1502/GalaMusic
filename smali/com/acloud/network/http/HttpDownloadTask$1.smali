.class Lcom/acloud/network/http/HttpDownloadTask$1;
.super Ljava/lang/Object;
.source "HttpDownloadTask.java"

# interfaces
.implements Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/network/http/HttpDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/network/http/HttpDownloadTask;

.field private final synthetic val$httpUtils:Lcom/acloud/network/http/HttpUtils;


# direct methods
.method constructor <init>(Lcom/acloud/network/http/HttpDownloadTask;Lcom/acloud/network/http/HttpUtils;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/network/http/HttpDownloadTask$1;->this$0:Lcom/acloud/network/http/HttpDownloadTask;

    iput-object p2, p0, Lcom/acloud/network/http/HttpDownloadTask$1;->val$httpUtils:Lcom/acloud/network/http/HttpUtils;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(JLjava/lang/String;)V
    .locals 1
    .param p1, "nCurDownSize"    # J
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadTask$1;->this$0:Lcom/acloud/network/http/HttpDownloadTask;

    # getter for: Lcom/acloud/network/http/HttpDownloadTask;->mDownloadInfoCallback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;
    invoke-static {v0}, Lcom/acloud/network/http/HttpDownloadTask;->access$6(Lcom/acloud/network/http/HttpDownloadTask;)Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadTask$1;->this$0:Lcom/acloud/network/http/HttpDownloadTask;

    # getter for: Lcom/acloud/network/http/HttpDownloadTask;->mDownloadInfoCallback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;
    invoke-static {v0}, Lcom/acloud/network/http/HttpDownloadTask;->access$6(Lcom/acloud/network/http/HttpDownloadTask;)Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onCancel(JLjava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorString"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 99
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "nCurDownSize"    # J
    .param p4, "nFileTotalSize"    # J

    .prologue
    .line 83
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p2

    div-long/2addr v2, p4

    long-to-int v0, v2

    .line 84
    .local v0, "nCurProgress":I
    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadTask$1;->this$0:Lcom/acloud/network/http/HttpDownloadTask;

    # getter for: Lcom/acloud/network/http/HttpDownloadTask;->mCurProgress:I
    invoke-static {v1}, Lcom/acloud/network/http/HttpDownloadTask;->access$3(Lcom/acloud/network/http/HttpDownloadTask;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadTask$1;->this$0:Lcom/acloud/network/http/HttpDownloadTask;

    invoke-static {v1, v0}, Lcom/acloud/network/http/HttpDownloadTask;->access$4(Lcom/acloud/network/http/HttpDownloadTask;I)V

    .line 86
    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadTask$1;->this$0:Lcom/acloud/network/http/HttpDownloadTask;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    # invokes: Lcom/acloud/network/http/HttpDownloadTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/acloud/network/http/HttpDownloadTask;->access$5(Lcom/acloud/network/http/HttpDownloadTask;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadTask$1;->this$0:Lcom/acloud/network/http/HttpDownloadTask;

    invoke-virtual {v1}, Lcom/acloud/network/http/HttpDownloadTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/acloud/network/http/HttpDownloadTask$1;->val$httpUtils:Lcom/acloud/network/http/HttpUtils;

    invoke-virtual {v1}, Lcom/acloud/network/http/HttpUtils;->cancelDownload()V

    .line 94
    :cond_1
    return-void
.end method

.method public onSpeed(JLjava/lang/String;)V
    .locals 1
    .param p1, "downSizeSpeed"    # J
    .param p3, "speed"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadTask$1;->this$0:Lcom/acloud/network/http/HttpDownloadTask;

    # getter for: Lcom/acloud/network/http/HttpDownloadTask;->mDownloadInfoCallback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;
    invoke-static {v0}, Lcom/acloud/network/http/HttpDownloadTask;->access$6(Lcom/acloud/network/http/HttpDownloadTask;)Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadTask$1;->this$0:Lcom/acloud/network/http/HttpDownloadTask;

    # getter for: Lcom/acloud/network/http/HttpDownloadTask;->mDownloadInfoCallback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;
    invoke-static {v0}, Lcom/acloud/network/http/HttpDownloadTask;->access$6(Lcom/acloud/network/http/HttpDownloadTask;)Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onSpeed(JLjava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method
