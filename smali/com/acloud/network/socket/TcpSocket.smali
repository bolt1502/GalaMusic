.class public Lcom/acloud/network/socket/TcpSocket;
.super Ljava/lang/Object;
.source "TcpSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;
    }
.end annotation


# static fields
.field private static final READ_CONTENT_WHAT:I


# instance fields
.field private in:Ljava/io/BufferedReader;

.field private mContext:Landroid/content/Context;

.field private mIsExit:Z

.field private mReadHandler:Landroid/os/Handler;

.field private mSocket:Ljava/net/Socket;

.field private mTcpSocketCallback:Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;

.field private out:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/network/socket/TcpSocket;->mIsExit:Z

    .line 38
    iput-object v1, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    .line 39
    iput-object v1, p0, Lcom/acloud/network/socket/TcpSocket;->out:Ljava/io/PrintWriter;

    .line 40
    iput-object v1, p0, Lcom/acloud/network/socket/TcpSocket;->in:Ljava/io/BufferedReader;

    .line 42
    iput-object v1, p0, Lcom/acloud/network/socket/TcpSocket;->mContext:Landroid/content/Context;

    .line 44
    iput-object v1, p0, Lcom/acloud/network/socket/TcpSocket;->mReadHandler:Landroid/os/Handler;

    .line 61
    iput-object v1, p0, Lcom/acloud/network/socket/TcpSocket;->mTcpSocketCallback:Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;

    .line 64
    iput-object p1, p0, Lcom/acloud/network/socket/TcpSocket;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/acloud/network/socket/TcpSocket;->mTcpSocketCallback:Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;

    .line 67
    invoke-direct {p0}, Lcom/acloud/network/socket/TcpSocket;->initRunnabler()V

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/network/socket/TcpSocket;)Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/acloud/network/socket/TcpSocket;->mTcpSocketCallback:Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;

    return-object v0
.end method

.method private initRunnabler()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lcom/acloud/network/socket/TcpSocket$1;

    invoke-direct {v0, p0}, Lcom/acloud/network/socket/TcpSocket$1;-><init>(Lcom/acloud/network/socket/TcpSocket;)V

    iput-object v0, p0, Lcom/acloud/network/socket/TcpSocket;->mReadHandler:Landroid/os/Handler;

    .line 225
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 176
    monitor-enter p0

    .line 177
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/acloud/network/socket/TcpSocket;->mIsExit:Z

    .line 176
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v2, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    .line 183
    :try_start_1
    iget-object v2, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    .line 184
    iget-object v2, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownOutput()V

    .line 186
    iget-object v2, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 187
    .local v0, "in":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 189
    .local v1, "ou":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 190
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "ou":Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 201
    :cond_0
    :goto_1
    return-void

    .line 176
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 197
    :catch_0
    move-exception v2

    goto :goto_1

    .line 191
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 4
    .param p1, "dstName"    # Ljava/lang/String;
    .param p2, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/acloud/network/socket/TcpSocket;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/acloud/network/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    .line 83
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 84
    iget-object v3, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 83
    iput-object v0, p0, Lcom/acloud/network/socket/TcpSocket;->out:Ljava/io/PrintWriter;

    .line 85
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 86
    iget-object v2, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    iput-object v0, p0, Lcom/acloud/network/socket/TcpSocket;->in:Ljava/io/BufferedReader;

    .line 87
    iget-object v0, p0, Lcom/acloud/network/socket/TcpSocket;->mTcpSocketCallback:Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/acloud/network/socket/TcpSocket;->mTcpSocketCallback:Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;

    invoke-interface {v0}, Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;->connected()V

    .line 94
    :cond_0
    return-void

    .line 92
    :cond_1
    new-instance v0, Landroid/accounts/NetworkErrorException;

    invoke-direct {v0}, Landroid/accounts/NetworkErrorException;-><init>()V

    throw v0
.end method

.method public read()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/acloud/network/socket/TcpSocket;->in:Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/acloud/network/socket/TcpSocket;->in:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public waitRead()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 101
    iget-boolean v2, p0, Lcom/acloud/network/socket/TcpSocket;->mIsExit:Z

    .line 103
    .local v2, "isExit":Z
    const-string v5, ""

    .line 105
    .local v5, "strContent":Ljava/lang/String;
    iget-object v6, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    if-nez v6, :cond_1

    .line 143
    :cond_0
    return-void

    .line 109
    :cond_1
    iget-object v6, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 110
    .local v1, "input":Ljava/io/InputStream;
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 111
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 113
    .local v3, "length":I
    :goto_0
    if-nez v2, :cond_0

    .line 114
    iget-object v6, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 115
    iget-object v6, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 116
    iget-object v6, p0, Lcom/acloud/network/socket/TcpSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v6

    if-nez v6, :cond_2

    .line 117
    array-length v6, v0

    invoke-virtual {v1, v0, v8, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0, v8, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v6, p0, Lcom/acloud/network/socket/TcpSocket;->mReadHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 126
    .local v4, "msg":Landroid/os/Message;
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->what:I

    .line 128
    iget-object v6, p0, Lcom/acloud/network/socket/TcpSocket;->mReadHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    const-string v5, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    :goto_1
    monitor-enter p0

    .line 140
    :try_start_1
    iget-boolean v2, p0, Lcom/acloud/network/socket/TcpSocket;->mIsExit:Z

    .line 139
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 131
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/acloud/network/socket/TcpSocket;->out:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/acloud/network/socket/TcpSocket;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/acloud/network/socket/TcpSocket;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 154
    :cond_0
    return-void
.end method
