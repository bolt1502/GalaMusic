.class public Lcom/acloud/network/http/HttpTask;
.super Landroid/os/AsyncTask;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/network/http/HttpTask$HttpResultCallback;,
        Lcom/acloud/network/http/HttpTask$StHttpContent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final HTTP_GET_TYPE:I = 0x0

.field private static final HTTP_POST_TYPE:I = 0x1

.field private static final HTTP_RESULT_MESSAGE:I

.field private static mLock:Ljava/lang/Object;

.field private static mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/network/http/HttpTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHttpRequstType:I

.field private mHttpResultCallback:Lcom/acloud/network/http/HttpTask$HttpResultCallback;

.field private mParams:[Lorg/apache/http/NameValuePair;

.field private mSendMsgMainThreadHandler:Landroid/os/Handler;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/acloud/network/http/HttpTask;->mTaskList:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/acloud/network/http/HttpTask;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/acloud/network/http/HttpTask$HttpResultCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/acloud/network/http/HttpTask$HttpResultCallback;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/acloud/network/http/HttpTask;->mHttpRequstType:I

    .line 25
    iput-object v1, p0, Lcom/acloud/network/http/HttpTask;->mParams:[Lorg/apache/http/NameValuePair;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/network/http/HttpTask;->mUrl:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/acloud/network/http/HttpTask;->mHttpResultCallback:Lcom/acloud/network/http/HttpTask$HttpResultCallback;

    .line 60
    new-instance v0, Lcom/acloud/network/http/HttpTask$1;

    invoke-direct {v0, p0}, Lcom/acloud/network/http/HttpTask$1;-><init>(Lcom/acloud/network/http/HttpTask;)V

    iput-object v0, p0, Lcom/acloud/network/http/HttpTask;->mSendMsgMainThreadHandler:Landroid/os/Handler;

    .line 143
    iput-object p1, p0, Lcom/acloud/network/http/HttpTask;->mHttpResultCallback:Lcom/acloud/network/http/HttpTask$HttpResultCallback;

    .line 144
    return-void
.end method

.method private constructor <init>(Lcom/acloud/network/http/HttpTask$HttpResultCallback;I)V
    .locals 0
    .param p1, "callback"    # Lcom/acloud/network/http/HttpTask$HttpResultCallback;
    .param p2, "type"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/acloud/network/http/HttpTask;-><init>(Lcom/acloud/network/http/HttpTask$HttpResultCallback;)V

    .line 170
    iput p2, p0, Lcom/acloud/network/http/HttpTask;->mHttpRequstType:I

    .line 171
    return-void
.end method

.method static synthetic access$2(Lcom/acloud/network/http/HttpTask;)Lcom/acloud/network/http/HttpTask$HttpResultCallback;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/acloud/network/http/HttpTask;->mHttpResultCallback:Lcom/acloud/network/http/HttpTask$HttpResultCallback;

    return-object v0
.end method

.method public static cancel(Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-object v2, Lcom/acloud/network/http/HttpTask;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 132
    :try_start_0
    sget-object v1, Lcom/acloud/network/http/HttpTask;->mTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    :goto_0
    monitor-exit v2

    .line 140
    return-void

    .line 132
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/network/http/HttpTask;

    .line 133
    .local v0, "task":Lcom/acloud/network/http/HttpTask;
    invoke-virtual {v0}, Lcom/acloud/network/http/HttpTask;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acloud/network/http/HttpTask;->cancel(Z)Z

    .line 135
    const/4 v0, 0x0

    .line 136
    goto :goto_0

    .line 131
    .end local v0    # "task":Lcom/acloud/network/http/HttpTask;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static cancelAll()V
    .locals 4

    .prologue
    .line 114
    sget-object v2, Lcom/acloud/network/http/HttpTask;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 115
    :try_start_0
    sget-object v1, Lcom/acloud/network/http/HttpTask;->mTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "task":Lcom/acloud/network/http/HttpTask;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    monitor-exit v2

    .line 124
    return-void

    .line 115
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "task":Lcom/acloud/network/http/HttpTask;
    check-cast v0, Lcom/acloud/network/http/HttpTask;

    .line 116
    .restart local v0    # "task":Lcom/acloud/network/http/HttpTask;
    if-eqz v0, :cond_0

    .line 117
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/acloud/network/http/HttpTask;->cancel(Z)Z

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static post(Ljava/lang/String;[Lorg/apache/http/NameValuePair;Lcom/acloud/network/http/HttpTask$HttpResultCallback;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # [Lorg/apache/http/NameValuePair;
    .param p2, "callback"    # Lcom/acloud/network/http/HttpTask$HttpResultCallback;

    .prologue
    const/4 v3, 0x1

    .line 102
    new-instance v0, Lcom/acloud/network/http/HttpTask;

    invoke-direct {v0, p2, v3}, Lcom/acloud/network/http/HttpTask;-><init>(Lcom/acloud/network/http/HttpTask$HttpResultCallback;I)V

    .line 103
    .local v0, "task":Lcom/acloud/network/http/HttpTask;
    invoke-direct {v0, p1}, Lcom/acloud/network/http/HttpTask;->setParams([Lorg/apache/http/NameValuePair;)V

    .line 104
    sget-object v2, Lcom/acloud/network/http/HttpTask;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    :try_start_0
    sget-object v1, Lcom/acloud/network/http/HttpTask;->mTaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/acloud/network/http/HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    return-void

    .line 104
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static request(Ljava/lang/String;Lcom/acloud/network/http/HttpTask$HttpResultCallback;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/acloud/network/http/HttpTask$HttpResultCallback;

    .prologue
    const/4 v3, 0x0

    .line 88
    new-instance v0, Lcom/acloud/network/http/HttpTask;

    invoke-direct {v0, p1, v3}, Lcom/acloud/network/http/HttpTask;-><init>(Lcom/acloud/network/http/HttpTask$HttpResultCallback;I)V

    .line 89
    .local v0, "task":Lcom/acloud/network/http/HttpTask;
    sget-object v2, Lcom/acloud/network/http/HttpTask;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 90
    :try_start_0
    sget-object v1, Lcom/acloud/network/http/HttpTask;->mTaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Lcom/acloud/network/http/HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void

    .line 89
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setParams([Lorg/apache/http/NameValuePair;)V
    .locals 0
    .param p1, "params"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/acloud/network/http/HttpTask;->mParams:[Lorg/apache/http/NameValuePair;

    .line 160
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/acloud/network/http/HttpTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 175
    if-eqz p1, :cond_0

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_1

    .line 201
    .end local v0    # "i":I
    :cond_0
    return-object v6

    .line 177
    .restart local v0    # "i":I
    :cond_1
    const-string v2, ""

    .line 178
    .local v2, "result":Ljava/lang/String;
    iget v4, p0, Lcom/acloud/network/http/HttpTask;->mHttpRequstType:I

    if-nez v4, :cond_2

    .line 179
    aget-object v4, p1, v0

    invoke-static {v4}, Lcom/acloud/network/http/HttpUtils;->getFromWebByHttpUrlConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    :goto_1
    invoke-virtual {p0}, Lcom/acloud/network/http/HttpTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    iget-object v4, p0, Lcom/acloud/network/http/HttpTask;->mSendMsgMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 189
    .local v1, "msg":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v1, Landroid/os/Message;->what:I

    .line 192
    new-instance v3, Lcom/acloud/network/http/HttpTask$StHttpContent;

    invoke-direct {v3, p0, v6}, Lcom/acloud/network/http/HttpTask$StHttpContent;-><init>(Lcom/acloud/network/http/HttpTask;Lcom/acloud/network/http/HttpTask$StHttpContent;)V

    .line 193
    .local v3, "stHttpContent":Lcom/acloud/network/http/HttpTask$StHttpContent;
    aget-object v4, p1, v0

    iput-object v4, v3, Lcom/acloud/network/http/HttpTask$StHttpContent;->url:Ljava/lang/String;

    .line 194
    iput-object v2, v3, Lcom/acloud/network/http/HttpTask$StHttpContent;->result:Ljava/lang/String;

    .line 196
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 198
    iget-object v4, p0, Lcom/acloud/network/http/HttpTask;->mSendMsgMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "stHttpContent":Lcom/acloud/network/http/HttpTask$StHttpContent;
    :cond_2
    aget-object v4, p1, v0

    iget-object v5, p0, Lcom/acloud/network/http/HttpTask;->mParams:[Lorg/apache/http/NameValuePair;

    invoke-static {v4, v5}, Lcom/acloud/network/http/HttpUtils;->postFromWebByHttpClient(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/acloud/network/http/HttpTask;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/acloud/network/http/HttpTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 206
    sget-object v1, Lcom/acloud/network/http/HttpTask;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    sget-object v0, Lcom/acloud/network/http/HttpTask;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/acloud/network/http/HttpTask;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 213
    return-void

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/acloud/network/http/HttpTask;->mUrl:Ljava/lang/String;

    .line 148
    return-void
.end method
