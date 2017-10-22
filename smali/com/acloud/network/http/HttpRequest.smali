.class public Lcom/acloud/network/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/network/http/HttpRequest$HttpError;,
        Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;
    }
.end annotation


# static fields
.field private static final NULL_KEY:Ljava/lang/String; = "null_key"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHttpRequestCallback:Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;

.field private mHttpResultCallback:Lcom/acloud/network/http/HttpTask$HttpResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/acloud/network/http/HttpRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/acloud/network/http/HttpRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "callback":Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;, "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback<TT;>;"
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/acloud/network/http/HttpRequest;->mHttpRequestCallback:Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;

    .line 71
    iput-object v0, p0, Lcom/acloud/network/http/HttpRequest;->mHttpResultCallback:Lcom/acloud/network/http/HttpTask$HttpResultCallback;

    .line 78
    iput-object p1, p0, Lcom/acloud/network/http/HttpRequest;->mHttpRequestCallback:Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;

    .line 80
    new-instance v0, Lcom/acloud/network/http/HttpRequest$1;

    invoke-direct {v0, p0}, Lcom/acloud/network/http/HttpRequest$1;-><init>(Lcom/acloud/network/http/HttpRequest;)V

    iput-object v0, p0, Lcom/acloud/network/http/HttpRequest;->mHttpResultCallback:Lcom/acloud/network/http/HttpTask$HttpResultCallback;

    .line 94
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/network/http/HttpRequest;)Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/acloud/network/http/HttpRequest;->mHttpRequestCallback:Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/network/http/HttpRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/acloud/network/http/HttpRequest;->resolveResult(Ljava/lang/String;)V

    return-void
.end method

.method public static cancelAllTask()V
    .locals 0

    .prologue
    .line 141
    invoke-static {}, Lcom/acloud/network/http/HttpTask;->cancelAll()V

    .line 142
    return-void
.end method

.method public static cancelTask(Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p0}, Lcom/acloud/network/http/HttpTask;->cancel(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private static concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "b"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 232
    if-nez p0, :cond_0

    .line 236
    .end local p1    # "b":[Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 233
    .restart local p1    # "b":[Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    goto :goto_0

    .line 234
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "c":[Ljava/lang/Object;
    const/4 v1, 0x0

    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 236
    goto :goto_0
.end method

.method private static getAllDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_1

    .line 214
    const/4 v0, 0x0

    .line 222
    :cond_0
    :goto_0
    return-object v0

    .line 216
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 218
    .local v0, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/acloud/network/http/HttpRequest;->getAllDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 220
    .local v1, "superFileds":[Ljava/lang/reflect/Field;
    invoke-static {v0, v1}, Lcom/acloud/network/http/HttpRequest;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    check-cast v0, [Ljava/lang/reflect/Field;

    .restart local v0    # "fields":[Ljava/lang/reflect/Field;
    goto :goto_0
.end method

.method public static getGenericType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static post(Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;Ljava/util/Map;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "callback":Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;, "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback<TT;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 127
    .local v1, "keys":[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [Lorg/apache/http/NameValuePair;

    .line 128
    .local v2, "names":[Lorg/apache/http/NameValuePair;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 131
    invoke-static {p0, p1, v2}, Lcom/acloud/network/http/HttpRequest;->post(Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;[Lorg/apache/http/NameValuePair;)V

    .line 135
    .end local v0    # "i":I
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "names":[Lorg/apache/http/NameValuePair;
    :goto_1
    return-void

    .line 129
    .restart local v0    # "i":I
    .restart local v1    # "keys":[Ljava/lang/String;
    .restart local v2    # "names":[Lorg/apache/http/NameValuePair;
    :cond_0
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v5, v1, v0

    aget-object v3, v1, v0

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "names":[Lorg/apache/http/NameValuePair;
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    invoke-static {p0, p1, v3}, Lcom/acloud/network/http/HttpRequest;->post(Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;[Lorg/apache/http/NameValuePair;)V

    goto :goto_1
.end method

.method public static varargs post(Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;[Lorg/apache/http/NameValuePair;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "params"    # [Lorg/apache/http/NameValuePair;
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
    .line 114
    .local p1, "callback":Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;, "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback<TT;>;"
    new-instance v0, Lcom/acloud/network/http/HttpRequest;

    invoke-direct {v0, p1}, Lcom/acloud/network/http/HttpRequest;-><init>(Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;)V

    .line 115
    .local v0, "http":Lcom/acloud/network/http/HttpRequest;
    invoke-direct {v0, p0, p2}, Lcom/acloud/network/http/HttpRequest;->post(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    .line 116
    return-void
.end method

.method private varargs post(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/NameValuePair;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/acloud/network/http/HttpRequest;->mHttpResultCallback:Lcom/acloud/network/http/HttpTask$HttpResultCallback;

    invoke-static {p1, p2, v0}, Lcom/acloud/network/http/HttpTask;->post(Ljava/lang/String;[Lorg/apache/http/NameValuePair;Lcom/acloud/network/http/HttpTask$HttpResultCallback;)V

    .line 159
    return-void
.end method

.method private request(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/acloud/network/http/HttpRequest;->mHttpResultCallback:Lcom/acloud/network/http/HttpTask$HttpResultCallback;

    invoke-static {p1, v0}, Lcom/acloud/network/http/HttpTask;->request(Ljava/lang/String;Lcom/acloud/network/http/HttpTask$HttpResultCallback;)V

    .line 167
    return-void
.end method

.method public static request(Ljava/lang/String;Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
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
    .line 103
    .local p1, "callback":Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;, "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback<TT;>;"
    new-instance v0, Lcom/acloud/network/http/HttpRequest;

    invoke-direct {v0, p1}, Lcom/acloud/network/http/HttpRequest;-><init>(Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;)V

    .line 104
    .local v0, "http":Lcom/acloud/network/http/HttpRequest;
    invoke-direct {v0, p0}, Lcom/acloud/network/http/HttpRequest;->request(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private resolveResult(Ljava/lang/String;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 176
    :try_start_0
    iget-object v5, p0, Lcom/acloud/network/http/HttpRequest;->mHttpRequestCallback:Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;

    invoke-virtual {v5}, Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;->body()Ljava/lang/Object;

    move-result-object v4

    .line 178
    .local v4, "p":Ljava/lang/Object;, "TT;"
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/acloud/network/http/HttpRequest;->getAllDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 179
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v2

    if-ne v5, v8, :cond_0

    .line 180
    const-string v5, "null_key"

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 183
    .local v3, "object":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "array":Lorg/json/JSONArray;
    const-string v5, "null_key"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 188
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "object":Lorg/json/JSONObject;
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v3    # "object":Lorg/json/JSONObject;
    invoke-static {v2, v4, v3}, Lcom/acloud/network/http/HttpRequest;->setFieldData([Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 191
    iget-object v5, p0, Lcom/acloud/network/http/HttpRequest;->mHttpRequestCallback:Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;

    invoke-virtual {v5, v4}, Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 205
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "p":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 195
    iget-object v5, p0, Lcom/acloud/network/http/HttpRequest;->mHttpRequestCallback:Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;

    new-instance v6, Lcom/acloud/network/http/HttpRequest$HttpError;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v8, v7}, Lcom/acloud/network/http/HttpRequest$HttpError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;->onFailure(Lcom/acloud/network/http/HttpRequest$HttpError;)V

    goto :goto_0

    .line 196
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 199
    iget-object v5, p0, Lcom/acloud/network/http/HttpRequest;->mHttpRequestCallback:Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;

    new-instance v6, Lcom/acloud/network/http/HttpRequest$HttpError;

    const/4 v7, 0x2

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/acloud/network/http/HttpRequest$HttpError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;->onFailure(Lcom/acloud/network/http/HttpRequest$HttpError;)V

    goto :goto_0

    .line 200
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 203
    iget-object v5, p0, Lcom/acloud/network/http/HttpRequest;->mHttpRequestCallback:Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;

    new-instance v6, Lcom/acloud/network/http/HttpRequest$HttpError;

    const/4 v7, 0x3

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/acloud/network/http/HttpRequest$HttpError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;->onFailure(Lcom/acloud/network/http/HttpRequest$HttpError;)V

    goto :goto_0
.end method

.method private static setFieldData([Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 16
    .param p0, "fields"    # [Ljava/lang/reflect/Field;
    .param p2, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/reflect/Field;",
            "TT;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "p":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    array-length v12, v0

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    const-string v12, "null_key"

    const/4 v13, 0x0

    aget-object v13, p0, v13

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 251
    const-string v12, "null_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 253
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 254
    .local v11, "result":Lorg/json/JSONObject;
    const-string v12, "null_key"

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    move-object/from16 p2, v11

    .line 258
    .end local v11    # "result":Lorg/json/JSONObject;
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v12, v0

    if-lt v8, v12, :cond_1

    .line 320
    return-void

    .line 259
    :cond_1
    aget-object v12, p0, v8

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 260
    aget-object v12, p0, v8

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 262
    :try_start_0
    aget-object v12, p0, v8

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_3

    .line 264
    aget-object v12, p0, v8

    aget-object v13, p0, v8

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14, v15}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 258
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 265
    :cond_3
    aget-object v12, p0, v8

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_4

    .line 266
    aget-object v12, p0, v8

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 268
    :try_start_1
    aget-object v12, p0, v8

    aget-object v13, p0, v8

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 269
    :catch_0
    move-exception v6

    .line 271
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    aget-object v12, p0, v8

    aget-object v13, p0, v8

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 272
    :catch_1
    move-exception v7

    .line 273
    .local v7, "e2":Ljava/lang/Exception;
    :try_start_3
    aget-object v12, p0, v8

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 315
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 316
    .local v6, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 276
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :cond_4
    :try_start_4
    aget-object v12, p0, v8

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_5

    .line 278
    aget-object v12, p0, v8

    aget-object v13, p0, v8

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14, v15}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_1

    .line 279
    :cond_5
    const-class v12, Ljava/util/List;

    aget-object v13, p0, v8

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 281
    aget-object v12, p0, v8

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 283
    .local v2, "array":Lorg/json/JSONArray;
    aget-object v12, p0, v8

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-static {v12}, Lcom/acloud/network/http/HttpRequest;->getGenericType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 284
    .local v5, "clz":Ljava/lang/Class;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lt v9, v12, :cond_6

    .line 299
    aget-object v12, p0, v8

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 287
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 288
    .local v3, "array_child":Ljava/lang/Object;
    const-class v12, Ljava/lang/String;

    if-ne v5, v12, :cond_7

    .line 289
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 297
    :goto_3
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2

    .line 286
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 292
    :cond_7
    :try_start_5
    invoke-static {v5}, Lcom/acloud/network/http/HttpRequest;->getAllDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    invoke-static {v13, v3, v12}, Lcom/acloud/network/http/HttpRequest;->setFieldData([Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 293
    :catch_3
    move-exception v6

    .line 294
    .local v6, "e":Ljava/lang/ClassCastException;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 302
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "array_child":Ljava/lang/Object;
    .end local v5    # "clz":Ljava/lang/Class;
    .end local v6    # "e":Ljava/lang/ClassCastException;
    .end local v9    # "j":I
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_8
    :try_start_7
    aget-object v12, p0, v8

    aget-object v13, p0, v8

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 303
    :catch_4
    move-exception v6

    .line 306
    .local v6, "e":Ljava/lang/Exception;
    :try_start_8
    aget-object v12, p0, v8

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 307
    .restart local v5    # "clz":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 308
    .local v4, "child":Ljava/lang/Object;
    invoke-static {v5}, Lcom/acloud/network/http/HttpRequest;->getAllDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v13

    aget-object v12, p0, v8

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    invoke-static {v13, v4, v12}, Lcom/acloud/network/http/HttpRequest;->setFieldData([Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 309
    aget-object v12, p0, v8

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 310
    .end local v4    # "child":Ljava/lang/Object;
    .end local v5    # "clz":Ljava/lang/Class;
    :catch_5
    move-exception v12

    goto/16 :goto_1
.end method
