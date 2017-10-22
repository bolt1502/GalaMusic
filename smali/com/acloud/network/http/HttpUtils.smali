.class public Lcom/acloud/network/http/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;
    }
.end annotation


# static fields
.field private static final CHARSET_GB2312:Ljava/lang/String; = "GB2312"

.field private static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final TAG:Ljava/lang/String; = "CustomHttpURLConnection"

.field private static conn:Ljava/net/HttpURLConnection;

.field private static customerHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field private mCurDownSize:J

.field private mIsExitDownload:Z

.field private mLastDownSize:J

.field private mLock:Ljava/lang/Object;

.field private mSpeedTimer:Lcom/acloud/AndroidTimer;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/network/http/HttpUtils;->mIsExitDownload:Z

    .line 61
    iput-object v1, p0, Lcom/acloud/network/http/HttpUtils;->mLock:Ljava/lang/Object;

    .line 62
    iput-object v1, p0, Lcom/acloud/network/http/HttpUtils;->mSpeedTimer:Lcom/acloud/AndroidTimer;

    .line 63
    iput-wide v2, p0, Lcom/acloud/network/http/HttpUtils;->mLastDownSize:J

    .line 64
    iput-wide v2, p0, Lcom/acloud/network/http/HttpUtils;->mCurDownSize:J

    .line 202
    iput-object p0, p0, Lcom/acloud/network/http/HttpUtils;->mLock:Ljava/lang/Object;

    .line 203
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/network/http/HttpUtils;)J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/acloud/network/http/HttpUtils;->mCurDownSize:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/acloud/network/http/HttpUtils;)J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/acloud/network/http/HttpUtils;->mLastDownSize:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/acloud/network/http/HttpUtils;J)V
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/acloud/network/http/HttpUtils;->mLastDownSize:J

    return-void
.end method

.method public static declared-synchronized cancelAll()V
    .locals 2

    .prologue
    .line 115
    const-class v1, Lcom/acloud/network/http/HttpUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/acloud/jni/HttpJni;->getInstance()Lcom/acloud/jni/HttpJni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/jni/HttpJni;->quitRequest()V

    .line 116
    invoke-static {}, Lcom/acloud/jni/HttpJni;->getInstance()Lcom/acloud/jni/HttpJni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/jni/HttpJni;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v1

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static formatSpeed(J)Ljava/lang/String;
    .locals 12
    .param p0, "speedSize"    # J

    .prologue
    const-wide/16 v10, 0x1

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/16 v4, 0x400

    .line 415
    const-string v0, ""

    .line 416
    .local v0, "speed":Ljava/lang/String;
    div-long v2, p0, v4

    div-long/2addr v2, v4

    cmp-long v1, v2, v10

    if-ltz v1, :cond_0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    long-to-double v2, p0

    div-double/2addr v2, v8

    div-double/2addr v2, v8

    mul-double/2addr v2, v6

    double-to-long v2, v2

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "MB/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    :goto_0
    return-object v0

    .line 418
    :cond_0
    div-long v2, p0, v4

    cmp-long v1, v2, v10

    if-ltz v1, :cond_1

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    div-long v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "KB/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    goto :goto_0

    .line 421
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "B/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getFromWebByHttpUrlConnection(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "strUrl"    # Ljava/lang/String;

    .prologue
    .line 87
    const-class v7, Lcom/acloud/network/http/HttpUtils;

    monitor-enter v7

    :try_start_0
    const-string v5, ""

    .line 88
    .local v5, "result":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 90
    .local v2, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    const/16 v6, 0x7530

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 91
    const/16 v6, 0x7530

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 92
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_1
    invoke-interface {v4, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 95
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 96
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v8, 0xc8

    if-ne v6, v8, :cond_1

    .line 97
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    const-string v8, "utf-8"

    invoke-static {v6, v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 107
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    monitor-exit v7

    return-object v5

    .line 99
    .restart local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_2
    const-string v5, ""
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 102
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 87
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v1    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v2    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 104
    .restart local v1    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    .restart local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private static declared-synchronized getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 9

    .prologue
    .line 169
    const-class v5, Lcom/acloud/network/http/HttpUtils;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/acloud/network/http/HttpUtils;->customerHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v4, :cond_0

    .line 170
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 172
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 173
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 174
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 176
    const-string v4, "Mozilla/5.0(Linux;U;Android 2.2.1;en-us;Nexus One Build.FRG83) AppleWebKit/553.1(KHTML,like Gecko) Version/4.0 Mobile Safari/533.1"

    .line 175
    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 180
    const-wide/16 v6, 0x2710

    invoke-static {v2, v6, v7}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 182
    const/16 v0, 0x7530

    .line 183
    .local v0, "ConnectionTimeOut":I
    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 185
    const/16 v4, 0x2710

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 187
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 188
    .local v3, "schReg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    .line 189
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v4, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 188
    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 192
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 194
    .local v1, "conMgr":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v4, Lcom/acloud/network/http/HttpUtils;->customerHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 195
    sget-object v4, Lcom/acloud/network/http/HttpUtils;->customerHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    .line 196
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 195
    invoke-virtual {v4, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 198
    :cond_0
    sget-object v4, Lcom/acloud/network/http/HttpUtils;->customerHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 169
    .end local v0    # "ConnectionTimeOut":I
    .end local v1    # "conMgr":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v3    # "schReg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static isJniDownload()Z
    .locals 7

    .prologue
    .line 440
    invoke-static {}, Lcom/acloud/GalaApplication;->getApplication()Landroid/content/Context;

    move-result-object v1

    .line 441
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 443
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 444
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 445
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 446
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "network_download_param"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "jni"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 453
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_0
    return v4

    .line 449
    :catch_0
    move-exception v2

    .line 450
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 453
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static postFromWebByHttpClient(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "nameValuePairs"    # [Lorg/apache/http/NameValuePair;

    .prologue
    const/4 v8, 0x0

    .line 128
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p1, :cond_0

    .line 130
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, p1

    if-lt v3, v9, :cond_2

    .line 134
    .end local v3    # "i":I
    :cond_0
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 135
    const-string v9, "UTF-8"

    .line 134
    invoke-direct {v7, v4, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 136
    .local v7, "urlEncoded":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v2, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 138
    invoke-static {}, Lcom/acloud/network/http/HttpUtils;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 139
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 140
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_3

    .line 143
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "request error status code:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 157
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "urlEncoded":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_1
    :goto_1
    return-object v8

    .line 131
    .restart local v3    # "i":I
    .restart local v4    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    aget-object v9, p1, v3

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    .end local v3    # "i":I
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "urlEncoded":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_3
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 147
    .local v5, "resEntity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_1

    .line 148
    const-string v9, "UTF-8"

    .line 147
    invoke-static {v5, v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    goto :goto_1

    .line 149
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "urlEncoded":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v9, "CustomHttpURLConnection"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 152
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 153
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v9, "CustomHttpURLConnection"

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 155
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 156
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "CustomHttpURLConnection"

    const-string v10, "network error!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public cancelDownload()V
    .locals 2

    .prologue
    .line 430
    iget-object v1, p0, Lcom/acloud/network/http/HttpUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 431
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/acloud/network/http/HttpUtils;->mIsExitDownload:Z

    .line 430
    monitor-exit v1

    .line 433
    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/acloud/network/http/HttpUtils$DownloadInfoCallback;)Z
    .locals 21
    .param p1, "strUrl"    # Ljava/lang/String;
    .param p2, "strFilePath"    # Ljava/lang/String;
    .param p3, "strFileName"    # Ljava/lang/String;
    .param p4, "strMD5"    # Ljava/lang/String;
    .param p5, "nTotalSize"    # J
    .param p7, "callback"    # Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;

    .prologue
    .line 259
    const/4 v15, 0x0

    .line 261
    .local v15, "isDownloadSuccess":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/acloud/network/http/HttpUtils;->mIsExitDownload:Z

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "pathName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 265
    .local v17, "output":Ljava/io/RandomAccessFile;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 267
    const/16 v2, -0x14

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    :try_start_1
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 279
    .local v19, "url":Ljava/net/URL;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 280
    .local v9, "conn":Ljava/net/HttpURLConnection;
    const-string v2, "GET"

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 281
    const-string v2, "Accept-Encoding"

    const-string v6, "identity"

    invoke-virtual {v9, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v2, "Accept"

    const-string v6, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v9, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v2, "Accept-Language"

    const-string v6, "zh-CN"

    invoke-virtual {v9, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "Referer"

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v2, "Charset"

    const-string v6, "UTF-8"

    invoke-virtual {v9, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v2, "User-Agent"

    const-string v6, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    invoke-virtual {v9, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v2, "Connection"

    const-string v6, "Keep-Alive"

    invoke-virtual {v9, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v12, "file":Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 291
    .local v4, "nCurProgress":J
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 293
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    invoke-static {v3}, Lcom/acloud/utils/MD5;->getMD5Sun(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 296
    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onFinish(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    const/4 v15, 0x1

    .line 391
    .end local v4    # "nCurProgress":J
    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "file":Ljava/io/File;
    .end local v19    # "url":Ljava/net/URL;
    :cond_0
    :goto_1
    if-eqz v17, :cond_1

    .line 392
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 397
    :cond_1
    :goto_2
    if-eqz p7, :cond_2

    .line 398
    if-eqz v15, :cond_10

    .end local v3    # "pathName":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onFinish(Ljava/lang/String;)V

    .line 400
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acloud/network/http/HttpUtils;->mSpeedTimer:Lcom/acloud/AndroidTimer;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acloud/network/http/HttpUtils;->mSpeedTimer:Lcom/acloud/AndroidTimer;

    invoke-virtual {v2}, Lcom/acloud/AndroidTimer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acloud/network/http/HttpUtils;->mSpeedTimer:Lcom/acloud/AndroidTimer;

    invoke-virtual {v2}, Lcom/acloud/AndroidTimer;->stop()V

    .line 402
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/acloud/network/http/HttpUtils;->mSpeedTimer:Lcom/acloud/AndroidTimer;

    .line 404
    :cond_3
    return v15

    .line 269
    .restart local v3    # "pathName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 270
    .local v11, "e":Ljava/lang/Exception;
    const-string v2, "CustomHttpURLConnection"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/acloud/utils/Logcat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "nCurProgress":J
    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v19    # "url":Ljava/net/URL;
    :cond_4
    :try_start_3
    new-instance v18, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    .end local v17    # "output":Ljava/io/RandomAccessFile;
    .local v18, "output":Ljava/io/RandomAccessFile;
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 303
    const-string v2, "RANGE"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 306
    :goto_4
    const-wide/16 v6, 0x0

    cmp-long v2, p5, v6

    if-gtz v2, :cond_5

    .line 307
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v6, v2

    add-long p5, v6, v4

    .line 309
    :cond_5
    const-string v2, "CustomHttpURLConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pathName:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/acloud/utils/Logcat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v2, v6, p5

    if-nez v2, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v2, p5, v6

    if-lez v2, :cond_6

    .line 313
    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onFinish(Ljava/lang/String;)V

    move-object/from16 v17, v18

    .line 314
    .end local v18    # "output":Ljava/io/RandomAccessFile;
    .restart local v17    # "output":Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .line 317
    .end local v17    # "output":Ljava/io/RandomAccessFile;
    .restart local v18    # "output":Ljava/io/RandomAccessFile;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acloud/network/http/HttpUtils;->mSpeedTimer:Lcom/acloud/AndroidTimer;

    if-nez v2, :cond_7

    .line 318
    new-instance v2, Lcom/acloud/AndroidTimer;

    new-instance v6, Lcom/acloud/network/http/HttpUtils$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v6, v0, v1}, Lcom/acloud/network/http/HttpUtils$1;-><init>(Lcom/acloud/network/http/HttpUtils;Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;)V

    .line 326
    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Lcom/acloud/AndroidTimer;-><init>(Lcom/acloud/AndroidTimer$TimerCallback;Z)V

    .line 318
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/acloud/network/http/HttpUtils;->mSpeedTimer:Lcom/acloud/AndroidTimer;

    .line 328
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/acloud/network/http/HttpUtils;->mSpeedTimer:Lcom/acloud/AndroidTimer;

    const/16 v6, 0x3e8

    invoke-virtual {v2, v6}, Lcom/acloud/AndroidTimer;->start(I)V

    .line 330
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v10, "dir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 332
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 335
    :cond_8
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    .line 336
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 338
    :cond_9
    if-nez v18, :cond_11

    .line 339
    new-instance v17, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    move-object/from16 v0, v17

    invoke-direct {v0, v12, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 342
    .end local v18    # "output":Ljava/io/RandomAccessFile;
    .restart local v17    # "output":Ljava/io/RandomAccessFile;
    :goto_5
    const/4 v2, 0x1

    :try_start_5
    invoke-virtual {v12, v2}, Ljava/io/File;->setReadable(Z)Z

    .line 343
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/io/File;->setWritable(Z)Z

    .line 346
    const/16 v2, 0x2000

    new-array v8, v2, [B

    .line 348
    .local v8, "buffer":[B
    const/16 v16, 0x0

    .line 349
    .local v16, "length":I
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 350
    .local v13, "input":Ljava/io/BufferedInputStream;
    :cond_a
    :goto_6
    invoke-virtual {v13, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v16

    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_b

    .line 367
    :goto_7
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    .line 369
    const/4 v14, 0x0

    .line 370
    .local v14, "isCancel":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/acloud/network/http/HttpUtils;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/acloud/network/http/HttpUtils;->mIsExitDownload:Z

    .line 370
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 373
    if-eqz v14, :cond_e

    .line 375
    if-eqz p7, :cond_0

    .line 376
    :try_start_7
    move-object/from16 v0, p7

    invoke-interface {v0, v4, v5, v3}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onCancel(JLjava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 383
    .end local v4    # "nCurProgress":J
    .end local v8    # "buffer":[B
    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "dir":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "input":Ljava/io/BufferedInputStream;
    .end local v14    # "isCancel":Z
    .end local v16    # "length":I
    .end local v19    # "url":Ljava/net/URL;
    :catch_1
    move-exception v11

    .line 384
    .local v11, "e":Ljava/net/MalformedURLException;
    :goto_8
    :try_start_8
    invoke-virtual {v11}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .end local v11    # "e":Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v2

    goto/16 :goto_1

    .line 351
    .restart local v4    # "nCurProgress":J
    .restart local v8    # "buffer":[B
    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    .restart local v10    # "dir":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "input":Ljava/io/BufferedInputStream;
    .restart local v16    # "length":I
    .restart local v19    # "url":Ljava/net/URL;
    :cond_b
    const/4 v2, 0x0

    :try_start_9
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v8, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 352
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/acloud/network/http/HttpUtils;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 353
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/acloud/network/http/HttpUtils;->mIsExitDownload:Z

    if-eqz v2, :cond_c

    .line 354
    monitor-exit v6

    goto :goto_7

    .line 352
    :catchall_1
    move-exception v2

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 385
    .end local v4    # "nCurProgress":J
    .end local v8    # "buffer":[B
    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "dir":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "input":Ljava/io/BufferedInputStream;
    .end local v16    # "length":I
    .end local v19    # "url":Ljava/net/URL;
    :catch_2
    move-exception v11

    .line 386
    .local v11, "e":Ljava/net/UnknownHostException;
    :goto_9
    :try_start_c
    invoke-virtual {v11}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 352
    .end local v11    # "e":Ljava/net/UnknownHostException;
    .restart local v4    # "nCurProgress":J
    .restart local v8    # "buffer":[B
    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    .restart local v10    # "dir":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "input":Ljava/io/BufferedInputStream;
    .restart local v16    # "length":I
    .restart local v19    # "url":Ljava/net/URL;
    :cond_c
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 358
    move/from16 v0, v16

    int-to-long v6, v0

    add-long/2addr v4, v6

    .line 359
    :try_start_e
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/acloud/network/http/HttpUtils;->mCurDownSize:J

    .line 360
    if-eqz p7, :cond_a

    .line 361
    cmp-long v2, v4, p5

    if-ltz v2, :cond_d

    .line 362
    move-wide/from16 v4, p5

    :cond_d
    move-object/from16 v2, p7

    move-wide/from16 v6, p5

    .line 364
    invoke-interface/range {v2 .. v7}, Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;->onProgressUpdate(Ljava/lang/String;JJ)V
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    .line 387
    .end local v4    # "nCurProgress":J
    .end local v8    # "buffer":[B
    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "dir":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "input":Ljava/io/BufferedInputStream;
    .end local v16    # "length":I
    .end local v19    # "url":Ljava/net/URL;
    :catch_3
    move-exception v11

    .line 388
    .local v11, "e":Ljava/io/IOException;
    :goto_a
    :try_start_f
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    .line 370
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v4    # "nCurProgress":J
    .restart local v8    # "buffer":[B
    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    .restart local v10    # "dir":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "input":Ljava/io/BufferedInputStream;
    .restart local v14    # "isCancel":Z
    .restart local v16    # "length":I
    .restart local v19    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v2

    :try_start_10
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v2

    .line 379
    :cond_e
    invoke-virtual {v12}, Ljava/io/File;->length()J
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-wide v6

    cmp-long v2, v6, p5

    if-eqz v2, :cond_f

    const-wide/16 v6, 0x0

    cmp-long v2, p5, v6

    if-gtz v2, :cond_0

    .line 380
    :cond_f
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 394
    .end local v4    # "nCurProgress":J
    .end local v8    # "buffer":[B
    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "dir":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "input":Ljava/io/BufferedInputStream;
    .end local v14    # "isCancel":Z
    .end local v16    # "length":I
    .end local v19    # "url":Ljava/net/URL;
    :catch_4
    move-exception v11

    .line 395
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 398
    .end local v11    # "e":Ljava/io/IOException;
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_3

    .end local v17    # "output":Ljava/io/RandomAccessFile;
    .restart local v4    # "nCurProgress":J
    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v18    # "output":Ljava/io/RandomAccessFile;
    .restart local v19    # "url":Ljava/net/URL;
    :catchall_3
    move-exception v2

    move-object/from16 v17, v18

    .end local v18    # "output":Ljava/io/RandomAccessFile;
    .restart local v17    # "output":Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .line 387
    .end local v17    # "output":Ljava/io/RandomAccessFile;
    .restart local v18    # "output":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v11

    move-object/from16 v17, v18

    .end local v18    # "output":Ljava/io/RandomAccessFile;
    .restart local v17    # "output":Ljava/io/RandomAccessFile;
    goto :goto_a

    .line 385
    .end local v17    # "output":Ljava/io/RandomAccessFile;
    .restart local v18    # "output":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v11

    move-object/from16 v17, v18

    .end local v18    # "output":Ljava/io/RandomAccessFile;
    .restart local v17    # "output":Ljava/io/RandomAccessFile;
    goto :goto_9

    .line 383
    .end local v17    # "output":Ljava/io/RandomAccessFile;
    .restart local v18    # "output":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v11

    move-object/from16 v17, v18

    .end local v18    # "output":Ljava/io/RandomAccessFile;
    .restart local v17    # "output":Ljava/io/RandomAccessFile;
    goto :goto_8

    .end local v17    # "output":Ljava/io/RandomAccessFile;
    .restart local v10    # "dir":Ljava/io/File;
    .restart local v18    # "output":Ljava/io/RandomAccessFile;
    :cond_11
    move-object/from16 v17, v18

    .end local v18    # "output":Ljava/io/RandomAccessFile;
    .restart local v17    # "output":Ljava/io/RandomAccessFile;
    goto/16 :goto_5

    .end local v10    # "dir":Ljava/io/File;
    :cond_12
    move-object/from16 v18, v17

    .end local v17    # "output":Ljava/io/RandomAccessFile;
    .restart local v18    # "output":Ljava/io/RandomAccessFile;
    goto/16 :goto_4
.end method
