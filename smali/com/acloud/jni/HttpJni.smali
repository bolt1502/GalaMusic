.class public Lcom/acloud/jni/HttpJni;
.super Ljava/lang/Object;
.source "HttpJni.java"


# static fields
.field public static final IMAGE_TYPE:Ljava/lang/String; = "1"

.field public static final MUSIC_TYPE:Ljava/lang/String; = "3"

.field public static final NORMAL_TYPE:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String;

.field private static pThis:Lcom/acloud/jni/HttpJni;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHttpDownloadCallback:Lcom/acloud/jni/HttpJniCallback;

.field private mInitHandler:Landroid/os/Handler;

.field private mIsInit:Z

.field private mIsInitFinish:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/acloud/jni/HttpJni;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/acloud/jni/HttpJni;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/jni/HttpJni;->pThis:Lcom/acloud/jni/HttpJni;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;

    .line 28
    iput-boolean v0, p0, Lcom/acloud/jni/HttpJni;->mIsInit:Z

    .line 29
    iput-boolean v0, p0, Lcom/acloud/jni/HttpJni;->mIsInitFinish:Z

    .line 47
    iput-object v1, p0, Lcom/acloud/jni/HttpJni;->mHttpDownloadCallback:Lcom/acloud/jni/HttpJniCallback;

    .line 49
    iput-object v1, p0, Lcom/acloud/jni/HttpJni;->mInitHandler:Landroid/os/Handler;

    .line 43
    iput-boolean v0, p0, Lcom/acloud/jni/HttpJni;->mIsInit:Z

    .line 44
    iput-boolean v0, p0, Lcom/acloud/jni/HttpJni;->mIsInitFinish:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/jni/HttpJni;)Lcom/acloud/jni/HttpJniCallback;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/acloud/jni/HttpJni;->mHttpDownloadCallback:Lcom/acloud/jni/HttpJniCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/jni/HttpJni;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/jni/HttpJni;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/acloud/jni/HttpJni;->copySoFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$3(Lcom/acloud/jni/HttpJni;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/acloud/jni/HttpJni;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/acloud/jni/HttpJni;Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/acloud/jni/HttpJni;->mIsInitFinish:Z

    return-void
.end method

.method static synthetic access$5(Lcom/acloud/jni/HttpJni;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/acloud/jni/HttpJni;->mInitHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/acloud/jni/HttpJni;Ljava/lang/String;Lcom/acloud/jni/HttpJniCallback;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/acloud/jni/HttpJni;->init(Ljava/lang/String;Lcom/acloud/jni/HttpJniCallback;)V

    return-void
.end method

.method private copySoFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "soPath"    # Ljava/lang/String;
    .param p3, "soName"    # Ljava/lang/String;
    .param p4, "is"    # Ljava/io/InputStream;

    .prologue
    .line 220
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "is:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 230
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/acloud/utils/MD5;->getMD5Sun(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "destMd5":Ljava/lang/String;
    invoke-static {p4}, Lcom/acloud/utils/MD5;->getMD5Sun(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "srcMd5":Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 261
    .end local v2    # "destMd5":Ljava/lang/String;
    .end local v7    # "srcMd5":Ljava/lang/String;
    :goto_1
    return-void

    .line 224
    .end local v1    # "dest":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 225
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 237
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "dest":Ljava/io/File;
    .restart local v2    # "destMd5":Ljava/lang/String;
    .restart local v7    # "srcMd5":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 239
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "rm "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/acloud/GlaNative;->execSystemCmd(Ljava/lang/String;)V

    .line 242
    .end local v2    # "destMd5":Ljava/lang/String;
    .end local v7    # "srcMd5":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 244
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 245
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 246
    .local v6, "length":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "is:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fos:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 247
    :goto_2
    invoke-virtual {p4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_3

    .line 250
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 251
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :try_start_2
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 257
    :catch_1
    move-exception v4

    .line 258
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 248
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v5, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 252
    .end local v0    # "buffer":[B
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "length":I
    :catch_2
    move-exception v4

    .line 253
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 256
    :try_start_5
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 257
    :catch_3
    move-exception v4

    .line 258
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 254
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 256
    :try_start_6
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 260
    :goto_3
    throw v8

    .line 257
    :catch_4
    move-exception v4

    .line 258
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getInstance()Lcom/acloud/jni/HttpJni;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/acloud/jni/HttpJni;->pThis:Lcom/acloud/jni/HttpJni;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/acloud/jni/HttpJni;

    invoke-direct {v0}, Lcom/acloud/jni/HttpJni;-><init>()V

    sput-object v0, Lcom/acloud/jni/HttpJni;->pThis:Lcom/acloud/jni/HttpJni;

    .line 39
    :cond_0
    sget-object v0, Lcom/acloud/jni/HttpJni;->pThis:Lcom/acloud/jni/HttpJni;

    return-object v0
.end method

.method private native init(Ljava/lang/String;Lcom/acloud/jni/HttpJniCallback;)V
.end method

.method private loadLibrary(Ljava/lang/String;)V
    .locals 5
    .param p1, "libName"    # Ljava/lang/String;

    .prologue
    .line 196
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;

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

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 202
    :goto_0
    sget-object v2, Lcom/acloud/jni/HttpJni;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Load lib \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v1    # "f":Ljava/io/File;
    :goto_1
    return-void

    .line 200
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 203
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/acloud/jni/HttpJni;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t load \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 205
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/acloud/jni/HttpJni;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t load \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Error;
    sget-object v2, Lcom/acloud/jni/HttpJni;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t load \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public native clearMission()V
.end method

.method public native get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public initHttpDownloadManager(Landroid/content/Context;Lcom/acloud/jni/HttpJniCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/acloud/jni/HttpJniCallback;

    .prologue
    .line 140
    iput-object p2, p0, Lcom/acloud/jni/HttpJni;->mHttpDownloadCallback:Lcom/acloud/jni/HttpJniCallback;

    .line 141
    invoke-virtual {p0, p1}, Lcom/acloud/jni/HttpJni;->initRequest(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method public initRequest(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/acloud/jni/HttpJni;->mIsInit:Z

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/acloud/jni/HttpJni;->mInitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/acloud/jni/HttpJni;->mInitHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/acloud/jni/HttpJni;->mInitHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/jni/HttpJni;->mIsInit:Z

    .line 72
    iput-object p1, p0, Lcom/acloud/jni/HttpJni;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/acloud/jni/HttpJni$1;

    invoke-direct {v0, p0}, Lcom/acloud/jni/HttpJni$1;-><init>(Lcom/acloud/jni/HttpJni;)V

    iput-object v0, p0, Lcom/acloud/jni/HttpJni;->mInitHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/acloud/jni/HttpJni$2;

    invoke-direct {v1, p0}, Lcom/acloud/jni/HttpJni$2;-><init>(Lcom/acloud/jni/HttpJni;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public declared-synchronized isInitFinish()Z
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/acloud/jni/HttpJni;->mIsInitFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native pauseDownload(Ljava/lang/String;)V
.end method

.method public native quit()V
.end method

.method public native quitRequest()V
.end method

.method public native setUser(Ljava/lang/String;)V
.end method

.method public native startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
