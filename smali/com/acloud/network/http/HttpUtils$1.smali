.class Lcom/acloud/network/http/HttpUtils$1;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Lcom/acloud/AndroidTimer$TimerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/network/http/HttpUtils;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/acloud/network/http/HttpUtils$DownloadInfoCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/network/http/HttpUtils;

.field private final synthetic val$callback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;


# direct methods
.method constructor <init>(Lcom/acloud/network/http/HttpUtils;Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/network/http/HttpUtils$1;->this$0:Lcom/acloud/network/http/HttpUtils;

    iput-object p2, p0, Lcom/acloud/network/http/HttpUtils$1;->val$callback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeout()V
    .locals 6

    .prologue
    .line 322
    iget-object v2, p0, Lcom/acloud/network/http/HttpUtils$1;->this$0:Lcom/acloud/network/http/HttpUtils;

    # getter for: Lcom/acloud/network/http/HttpUtils;->mCurDownSize:J
    invoke-static {v2}, Lcom/acloud/network/http/HttpUtils;->access$0(Lcom/acloud/network/http/HttpUtils;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/acloud/network/http/HttpUtils$1;->this$0:Lcom/acloud/network/http/HttpUtils;

    # getter for: Lcom/acloud/network/http/HttpUtils;->mLastDownSize:J
    invoke-static {v4}, Lcom/acloud/network/http/HttpUtils;->access$1(Lcom/acloud/network/http/HttpUtils;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 323
    .local v0, "speed":J
    iget-object v2, p0, Lcom/acloud/network/http/HttpUtils$1;->this$0:Lcom/acloud/network/http/HttpUtils;

    iget-object v3, p0, Lcom/acloud/network/http/HttpUtils$1;->this$0:Lcom/acloud/network/http/HttpUtils;

    # getter for: Lcom/acloud/network/http/HttpUtils;->mCurDownSize:J
    invoke-static {v3}, Lcom/acloud/network/http/HttpUtils;->access$0(Lcom/acloud/network/http/HttpUtils;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/acloud/network/http/HttpUtils;->access$2(Lcom/acloud/network/http/HttpUtils;J)V

    .line 324
    iget-object v2, p0, Lcom/acloud/network/http/HttpUtils$1;->val$callback:Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    invoke-static {v0, v1}, Lcom/acloud/network/http/HttpUtils;->formatSpeed(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onSpeed(JLjava/lang/String;)V

    .line 325
    return-void
.end method
