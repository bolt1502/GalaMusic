.class public Lio/vov/vitamio/MediaMetadataRetriever;
.super Ljava/lang/Object;
.source "MediaMetadataRetriever.java"


# static fields
.field private static NATIVE_LIB_LOADED:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFD:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lio/vov/vitamio/MediaMetadataRetriever;->NATIVE_LIB_LOADED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lio/vov/vitamio/MediaMetadataRetriever;->mFD:Landroid/content/res/AssetFileDescriptor;

    .line 48
    iput-object p1, p0, Lio/vov/vitamio/MediaMetadataRetriever;->mContext:Landroid/content/Context;

    .line 49
    sget-boolean v1, Lio/vov/vitamio/MediaMetadataRetriever;->NATIVE_LIB_LOADED:Z

    if-nez v1, :cond_0

    .line 50
    invoke-static {}, Lio/vov/vitamio/Vitamio;->getLibraryPath()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "LIB_ROOT":Ljava/lang/String;
    const-string v1, "LIB ROOT: %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lio/vov/utils/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "libstlport_shared.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "libvscanner.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "libffmpeg.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/vov/vitamio/MediaMetadataRetriever;->loadFFmpeg_native(Ljava/lang/String;)Z

    .line 55
    sput-boolean v4, Lio/vov/vitamio/MediaMetadataRetriever;->NATIVE_LIB_LOADED:Z

    .line 57
    .end local v0    # "LIB_ROOT":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lio/vov/vitamio/MediaMetadataRetriever;->native_init()V

    .line 58
    return-void
.end method

.method private native _release()V
.end method

.method private closeFD()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lio/vov/vitamio/MediaMetadataRetriever;->mFD:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lio/vov/vitamio/MediaMetadataRetriever;->mFD:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/vov/vitamio/MediaMetadataRetriever;->mFD:Landroid/content/res/AssetFileDescriptor;

    .line 125
    :cond_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static native loadFFmpeg_native(Ljava/lang/String;)Z
.end method

.method private final native native_finalize()V
.end method

.method private final native native_init()V
.end method


# virtual methods
.method public native extractMetadata(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    sget-boolean v0, Lio/vov/vitamio/MediaMetadataRetriever;->NATIVE_LIB_LOADED:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lio/vov/vitamio/MediaMetadataRetriever;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 115
    return-void

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 114
    throw v0
.end method

.method public native getFrameAtTime(J)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lio/vov/vitamio/MediaMetadataRetriever;->_release()V

    .line 98
    invoke-direct {p0}, Lio/vov/vitamio/MediaMetadataRetriever;->closeFD()V

    .line 99
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 63
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 64
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 67
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/vov/utils/FileUtils;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/vov/vitamio/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 83
    :cond_3
    :goto_0
    return-void

    .line 72
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 73
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "r"

    invoke-virtual {v1, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lio/vov/vitamio/MediaMetadataRetriever;->mFD:Landroid/content/res/AssetFileDescriptor;

    .line 74
    iget-object v3, p0, Lio/vov/vitamio/MediaMetadataRetriever;->mFD:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_3

    .line 76
    iget-object v3, p0, Lio/vov/vitamio/MediaMetadataRetriever;->mFD:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/vov/vitamio/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lio/vov/vitamio/MediaMetadataRetriever;->closeFD()V

    .line 81
    const-string v3, "Couldn\'t open file on client side, trying server side %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lio/vov/utils/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/vov/vitamio/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
