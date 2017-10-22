.class public Lcom/acloud/network/http/HttpBaseApi;
.super Ljava/lang/Object;
.source "HttpBaseApi.java"


# instance fields
.field private mUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/acloud/network/http/HttpBaseApi;->mUrls:Ljava/util/Set;

    .line 21
    return-void
.end method


# virtual methods
.method public cancelAllRequest()V
    .locals 3

    .prologue
    .line 27
    iget-object v1, p0, Lcom/acloud/network/http/HttpBaseApi;->mUrls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    return-void

    .line 27
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/acloud/network/http/HttpRequest;->cancelTask(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs post(Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;[Lorg/apache/http/NameValuePair;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "params"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback",
            "<TT;>;[",
            "Lorg/apache/http/NameValuePair;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "callback":Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;, "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback<TT;>;"
    iget-object v0, p0, Lcom/acloud/network/http/HttpBaseApi;->mUrls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {p1, p2, p3}, Lcom/acloud/network/http/HttpRequest;->post(Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;[Lorg/apache/http/NameValuePair;)V

    .line 51
    return-void
.end method

.method public request(Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "callback":Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;, "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback<TT;>;"
    iget-object v0, p0, Lcom/acloud/network/http/HttpBaseApi;->mUrls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {p1, p2}, Lcom/acloud/network/http/HttpRequest;->request(Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;)V

    .line 40
    return-void
.end method
