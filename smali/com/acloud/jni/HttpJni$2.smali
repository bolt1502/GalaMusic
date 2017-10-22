.class Lcom/acloud/jni/HttpJni$2;
.super Ljava/lang/Object;
.source "HttpJni.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/jni/HttpJni;->initRequest(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/jni/HttpJni;


# direct methods
.method constructor <init>(Lcom/acloud/jni/HttpJni;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    iget-object v1, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/plugin/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "libQt5Core.so"

    .line 92
    iget-object v4, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "libQt5Core.so"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 91
    # invokes: Lcom/acloud/jni/HttpJni;->copySoFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/acloud/jni/HttpJni;->access$2(Lcom/acloud/jni/HttpJni;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 96
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    iget-object v1, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/plugin/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "libQt5Network.so"

    .line 97
    iget-object v4, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "libQt5Network.so"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 96
    # invokes: Lcom/acloud/jni/HttpJni;->copySoFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/acloud/jni/HttpJni;->access$2(Lcom/acloud/jni/HttpJni;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 101
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    iget-object v1, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/plugin/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "libjni_httpdownload.so"

    .line 102
    iget-object v4, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "libjni_httpdownload.so"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 101
    # invokes: Lcom/acloud/jni/HttpJni;->copySoFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/acloud/jni/HttpJni;->access$2(Lcom/acloud/jni/HttpJni;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 106
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    iget-object v1, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/plugin/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "libQt5Sql.so"

    .line 107
    iget-object v4, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "libQt5Sql.so"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 106
    # invokes: Lcom/acloud/jni/HttpJni;->copySoFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/acloud/jni/HttpJni;->access$2(Lcom/acloud/jni/HttpJni;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 111
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    iget-object v1, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/plugin/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "libthreadLoadData.so"

    .line 112
    iget-object v4, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "libthreadLoadData.so"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 111
    # invokes: Lcom/acloud/jni/HttpJni;->copySoFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/acloud/jni/HttpJni;->access$2(Lcom/acloud/jni/HttpJni;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 116
    :goto_4
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    const-string v1, "Qt5Core"

    # invokes: Lcom/acloud/jni/HttpJni;->loadLibrary(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/acloud/jni/HttpJni;->access$3(Lcom/acloud/jni/HttpJni;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    const-string v1, "Qt5Network"

    # invokes: Lcom/acloud/jni/HttpJni;->loadLibrary(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/acloud/jni/HttpJni;->access$3(Lcom/acloud/jni/HttpJni;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    const-string v1, "Qt5Sql"

    # invokes: Lcom/acloud/jni/HttpJni;->loadLibrary(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/acloud/jni/HttpJni;->access$3(Lcom/acloud/jni/HttpJni;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    const-string v1, "jni_httpdownload"

    # invokes: Lcom/acloud/jni/HttpJni;->loadLibrary(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/acloud/jni/HttpJni;->access$3(Lcom/acloud/jni/HttpJni;Ljava/lang/String;)V

    .line 121
    monitor-enter p0

    .line 122
    :try_start_5
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/acloud/jni/HttpJni;->access$4(Lcom/acloud/jni/HttpJni;Z)V

    .line 121
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mInitHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/acloud/jni/HttpJni;->access$5(Lcom/acloud/jni/HttpJni;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mInitHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/acloud/jni/HttpJni;->access$5(Lcom/acloud/jni/HttpJni;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 129
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/acloud/jni/HttpJni;->access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/jni/HttpJni$2;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mHttpDownloadCallback:Lcom/acloud/jni/HttpJniCallback;
    invoke-static {v2}, Lcom/acloud/jni/HttpJni;->access$0(Lcom/acloud/jni/HttpJni;)Lcom/acloud/jni/HttpJniCallback;

    move-result-object v2

    # invokes: Lcom/acloud/jni/HttpJni;->init(Ljava/lang/String;Lcom/acloud/jni/HttpJniCallback;)V
    invoke-static {v0, v1, v2}, Lcom/acloud/jni/HttpJni;->access$6(Lcom/acloud/jni/HttpJni;Ljava/lang/String;Lcom/acloud/jni/HttpJniCallback;)V

    .line 130
    return-void

    .line 121
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_4

    .line 108
    :catch_1
    move-exception v0

    goto/16 :goto_3

    .line 103
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 98
    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 93
    :catch_4
    move-exception v0

    goto/16 :goto_0
.end method
