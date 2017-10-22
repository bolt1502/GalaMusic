.class public Lcom/acloud/network/http/HttpDownloadTask;
.super Landroid/os/AsyncTask;
.source "HttpDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurProgress:I

.field private mDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

.field private mDownloadInfoCallback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;


# direct methods
.method public constructor <init>(Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/acloud/network/http/HttpDownloadTask;->mDownloadInfoCallback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/network/http/HttpDownloadTask;->mCurProgress:I

    .line 30
    iput-object v1, p0, Lcom/acloud/network/http/HttpDownloadTask;->mDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    .line 33
    iput-object p1, p0, Lcom/acloud/network/http/HttpDownloadTask;->mDownloadInfoCallback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;)V
    .locals 0
    .param p1, "infoCallback"    # Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;
    .param p2, "finishCallback"    # Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/acloud/network/http/HttpDownloadTask;-><init>(Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;)V

    .line 43
    iput-object p2, p0, Lcom/acloud/network/http/HttpDownloadTask;->mDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    .line 44
    return-void
.end method

.method static synthetic access$3(Lcom/acloud/network/http/HttpDownloadTask;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/acloud/network/http/HttpDownloadTask;->mCurProgress:I

    return v0
.end method

.method static synthetic access$4(Lcom/acloud/network/http/HttpDownloadTask;I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/acloud/network/http/HttpDownloadTask;->mCurProgress:I

    return-void
.end method

.method static synthetic access$5(Lcom/acloud/network/http/HttpDownloadTask;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/acloud/network/http/HttpDownloadTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6(Lcom/acloud/network/http/HttpDownloadTask;)Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadTask;->mDownloadInfoCallback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    return-object v0
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/acloud/network/http/HttpUtils$DownloadInfoCallback;Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;)V
    .locals 4
    .param p0, "strUrl"    # Ljava/lang/String;
    .param p1, "strFilePath"    # Ljava/lang/String;
    .param p2, "strFileName"    # Ljava/lang/String;
    .param p3, "strMD5"    # Ljava/lang/String;
    .param p4, "nTotalSize"    # J
    .param p6, "callback"    # Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;
    .param p7, "finishCallback"    # Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    .prologue
    .line 57
    new-instance v0, Lcom/acloud/network/http/HttpDownloadTask;

    invoke-direct {v0, p6, p7}, Lcom/acloud/network/http/HttpDownloadTask;-><init>(Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;)V

    .line 58
    .local v0, "task":Lcom/acloud/network/http/HttpDownloadTask;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/acloud/network/http/HttpDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/acloud/network/http/HttpDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 64
    if-eqz p1, :cond_2

    array-length v2, p1

    if-le v2, v9, :cond_2

    .line 65
    new-instance v1, Lcom/acloud/network/http/HttpUtils;

    invoke-direct {v1}, Lcom/acloud/network/http/HttpUtils;-><init>()V

    .line 66
    .local v1, "httpUtils":Lcom/acloud/network/http/HttpUtils;
    const-string v5, ""

    .line 67
    .local v5, "strMD5":Ljava/lang/String;
    const-wide/16 v6, -0x1

    .line 68
    .local v6, "nTotalSize":J
    array-length v2, p1

    if-le v2, v3, :cond_0

    .line 69
    aget-object v5, p1, v3

    .line 70
    array-length v2, p1

    if-le v2, v4, :cond_0

    .line 72
    const/4 v2, 0x4

    :try_start_0
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 79
    :cond_0
    :goto_0
    aget-object v2, p1, v10

    aget-object v3, p1, v11

    aget-object v4, p1, v9

    new-instance v8, Lcom/acloud/network/http/HttpDownloadTask$1;

    invoke-direct {v8, p0, v1}, Lcom/acloud/network/http/HttpDownloadTask$1;-><init>(Lcom/acloud/network/http/HttpDownloadTask;Lcom/acloud/network/http/HttpUtils;)V

    invoke-virtual/range {v1 .. v8}, Lcom/acloud/network/http/HttpUtils;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/acloud/network/http/HttpUtils$DownloadInfoCallback;)Z

    move-result v0

    .line 122
    .local v0, "isDownloadSuccess":Z
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadTask;->mDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/acloud/network/http/HttpDownloadTask;->mDownloadFinishCallback:Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;

    aget-object v3, p1, v10

    invoke-interface {v2, v3, v0}, Lcom/acloud/network/http/HttpDownloadTask$DownloadFinishCallback;->onFinish(Ljava/lang/String;Z)V

    .line 126
    :cond_1
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isDownloadSuccess:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eqz v0, :cond_2

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, p1, v11

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .end local v0    # "isDownloadSuccess":Z
    .end local v1    # "httpUtils":Lcom/acloud/network/http/HttpUtils;
    .end local v5    # "strMD5":Ljava/lang/String;
    .end local v6    # "nTotalSize":J
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 73
    .restart local v1    # "httpUtils":Lcom/acloud/network/http/HttpUtils;
    .restart local v5    # "strMD5":Ljava/lang/String;
    .restart local v6    # "nTotalSize":J
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 146
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/acloud/network/http/HttpDownloadTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFinish:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadTask;->mDownloadInfoCallback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadTask;->mDownloadInfoCallback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    invoke-interface {v0, p1}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onFinish(Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Long;)V
    .locals 6
    .param p1, "values"    # [Ljava/lang/Long;

    .prologue
    const/4 v4, 0x1

    .line 137
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadTask;->mDownloadInfoCallback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-le v0, v4, :cond_0

    .line 138
    iget-object v0, p0, Lcom/acloud/network/http/HttpDownloadTask;->mDownloadInfoCallback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onProgressUpdate(Ljava/lang/String;JJ)V

    .line 140
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/acloud/network/http/HttpDownloadTask;->onProgressUpdate([Ljava/lang/Long;)V

    return-void
.end method
