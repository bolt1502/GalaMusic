.class Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;
.super Ljava/lang/Object;
.source "HttpDownloadServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/network/http/HttpDownloadServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadDataCache"
.end annotation


# instance fields
.field callback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

.field fileAbsolutePath:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field filePath:Ljava/lang/String;

.field isDownload:Z

.field md5:Ljava/lang/String;

.field task:Lcom/acloud/network/http/HttpDownloadTask;

.field final synthetic this$0:Lcom/acloud/network/http/HttpDownloadServer;

.field totalSize:Ljava/lang/String;

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/acloud/network/http/HttpDownloadServer;)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->this$0:Lcom/acloud/network/http/HttpDownloadServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;->isDownload:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/acloud/network/http/HttpDownloadServer;Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/acloud/network/http/HttpDownloadServer$DownloadDataCache;-><init>(Lcom/acloud/network/http/HttpDownloadServer;)V

    return-void
.end method
