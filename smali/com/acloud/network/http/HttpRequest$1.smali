.class Lcom/acloud/network/http/HttpRequest$1;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lcom/acloud/network/http/HttpTask$HttpResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/network/http/HttpRequest;-><init>(Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/network/http/HttpRequest;


# direct methods
.method constructor <init>(Lcom/acloud/network/http/HttpRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/network/http/HttpRequest$1;->this$0:Lcom/acloud/network/http/HttpRequest;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendHttpResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p2, :cond_0

    .line 85
    iget-object v0, p0, Lcom/acloud/network/http/HttpRequest$1;->this$0:Lcom/acloud/network/http/HttpRequest;

    # getter for: Lcom/acloud/network/http/HttpRequest;->mHttpRequestCallback:Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;
    invoke-static {v0}, Lcom/acloud/network/http/HttpRequest;->access$0(Lcom/acloud/network/http/HttpRequest;)Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;

    move-result-object v0

    new-instance v1, Lcom/acloud/network/http/HttpRequest$HttpError;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/acloud/network/http/HttpRequest$HttpError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;->onFailure(Lcom/acloud/network/http/HttpRequest$HttpError;)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/acloud/network/http/HttpRequest$1;->this$0:Lcom/acloud/network/http/HttpRequest;

    # invokes: Lcom/acloud/network/http/HttpRequest;->resolveResult(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/acloud/network/http/HttpRequest;->access$1(Lcom/acloud/network/http/HttpRequest;Ljava/lang/String;)V

    goto :goto_0
.end method
