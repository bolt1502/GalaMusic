.class public Lcom/acloud/stub/localmusic/network/api/MusicApi;
.super Ljava/lang/Object;
.source "MusicApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public searchArtist(Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;)V
    .locals 5
    .param p1, "artist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback",
            "<",
            "Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "callback":Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;, "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback<Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;>;"
    invoke-static {}, Lcom/acloud/stub/localmusic/network/api/HttpAddressUtils;->getArtistImageUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    .line 38
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "name"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 37
    invoke-static {v0, p2, v1}, Lcom/acloud/network/http/HttpRequest;->post(Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;[Lorg/apache/http/NameValuePair;)V

    .line 39
    return-void
.end method

.method public searchLrc(Ljava/lang/String;Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback",
            "<",
            "Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "callback":Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;, "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback<Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;>;"
    invoke-static {}, Lcom/acloud/stub/localmusic/network/api/HttpAddressUtils;->getLrcUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    .line 26
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "name"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 27
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "artist"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 25
    invoke-static {v0, p3, v1}, Lcom/acloud/network/http/HttpRequest;->post(Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;[Lorg/apache/http/NameValuePair;)V

    .line 28
    return-void
.end method
