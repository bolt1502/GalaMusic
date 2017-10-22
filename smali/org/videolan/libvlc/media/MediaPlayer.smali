.class public Lorg/videolan/libvlc/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field private static final TAG:Ljava/lang/String; = "MediaPlayer_vlc"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private mCurrentMedia:Lorg/videolan/libvlc/Media;

.field private mEventListener:Lorg/videolan/libvlc/MediaPlayer$EventListener;

.field private mIsPlaying:Z

.field private mLibVLC:Lorg/videolan/libvlc/LibVLC;

.field private mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

.field private mOnBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v2, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mIsPlaying:Z

    .line 88
    iput-object v2, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mEventListener:Lorg/videolan/libvlc/MediaPlayer$EventListener;

    .line 504
    iput-object v2, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    .line 505
    iput-object v2, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

    .line 506
    iput-object v2, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    .line 507
    iput-object v2, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    .line 508
    iput-object v2, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnSeekCompleteListener:Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;

    .line 509
    iput-object v2, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    .line 92
    :try_start_0
    new-instance v1, Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v1}, Lorg/videolan/libvlc/LibVLC;-><init>()V

    iput-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/libvlc/excption/VlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    if-nez v1, :cond_0

    .line 139
    :goto_1
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lorg/videolan/libvlc/excption/VlcException;
    invoke-virtual {v0}, Lorg/videolan/libvlc/excption/VlcException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v0    # "e":Lorg/videolan/libvlc/excption/VlcException;
    :cond_0
    new-instance v1, Lorg/videolan/libvlc/media/MediaPlayer$1;

    invoke-direct {v1, p0}, Lorg/videolan/libvlc/media/MediaPlayer$1;-><init>(Lorg/videolan/libvlc/media/MediaPlayer;)V

    iput-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mEventListener:Lorg/videolan/libvlc/MediaPlayer$EventListener;

    .line 138
    invoke-direct {p0}, Lorg/videolan/libvlc/media/MediaPlayer;->createMediaPlayer()V

    goto :goto_1
.end method

.method static synthetic access$0(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$3(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$4(Lorg/videolan/libvlc/media/MediaPlayer;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$5(Lorg/videolan/libvlc/media/MediaPlayer;)Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 171
    new-instance v0, Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-direct {v0}, Lorg/videolan/libvlc/media/MediaPlayer;-><init>()V

    .line 173
    .local v0, "player":Lorg/videolan/libvlc/media/MediaPlayer;
    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/videolan/libvlc/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 147
    new-instance v1, Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-direct {v1}, Lorg/videolan/libvlc/media/MediaPlayer;-><init>()V

    .line 149
    .local v1, "player":Lorg/videolan/libvlc/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Lorg/videolan/libvlc/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 159
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private createMediaPlayer()V
    .locals 2

    .prologue
    .line 545
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 546
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mEventListener:Lorg/videolan/libvlc/MediaPlayer$EventListener;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setEventListener(Lorg/videolan/libvlc/MediaPlayer$EventListener;)V

    .line 547
    return-void
.end method


# virtual methods
.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, v1, p2, v1}, Lorg/videolan/libvlc/MediaPlayer;->addSlave(ILandroid/net/Uri;Z)Z

    .line 449
    return-void
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 457
    return-void
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 453
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, v1, p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->addSlave(ILjava/lang/String;Z)Z

    .line 445
    return-void
.end method

.method public attachAuxEffect(I)V
    .locals 0
    .param p1, "effectId"    # I

    .prologue
    .line 392
    return-void
.end method

.method public deselectTrack(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 467
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 331
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getTime()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getSelectedTrack(I)I
    .locals 1
    .param p1, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackInfo()[Lorg/videolan/libvlc/media/MediaPlayer$TrackInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 437
    const/4 v1, 0x1

    new-array v0, v1, [Lorg/videolan/libvlc/media/MediaPlayer$TrackInfo;

    .line 438
    .local v0, "trackInfo":[Lorg/videolan/libvlc/media/MediaPlayer$TrackInfo;
    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 305
    const/4 v0, -0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 301
    const/4 v0, -0x1

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 286
    const-string v0, "MediaPlayer_vlc"

    const-string v1, "-----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mIsPlaying:Z

    goto :goto_0
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method public prepareAsync()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-interface {v0, p0, v1, v2}, Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;->onError(Lorg/videolan/libvlc/media/MediaPlayer;II)Z

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 242
    :cond_2
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    const-string v1, ":video-paused"

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mIsPlaying:Z

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    const-string v0, "MediaPlayer_vlc"

    const-string v1, "-----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 351
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, v2}, Lorg/videolan/libvlc/MediaPlayer;->setEventListener(Lorg/videolan/libvlc/MediaPlayer$EventListener;)V

    .line 352
    iput-object v2, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 360
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/MediaPlayer;->release()V

    .line 361
    invoke-direct {p0}, Lorg/videolan/libvlc/media/MediaPlayer;->createMediaPlayer()V

    .line 362
    return-void
.end method

.method public seekTo(I)V
    .locals 5
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v2, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v2, :cond_0

    .line 324
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 318
    .local v0, "duration":I
    if-nez v0, :cond_1

    .line 319
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "MediaPlayer no initialization!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_1
    int-to-float v2, p1

    int-to-float v3, v0

    div-float v1, v2, v3

    .line 322
    .local v1, "position":F
    const-string v2, "MediaPlayer_vlc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "msec:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v2, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v2, v1}, Lorg/videolan/libvlc/MediaPlayer;->setPosition(F)V

    goto :goto_0
.end method

.method public selectTrack(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 464
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 0
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 385
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "streamtype"    # I

    .prologue
    .line 365
    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 0
    .param p1, "level"    # F

    .prologue
    .line 395
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
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
    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/videolan/libvlc/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 184
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 189
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    .line 195
    :cond_1
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    .line 196
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    .line 219
    :cond_1
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    .line 220
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 227
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    .line 207
    :cond_1
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    .line 208
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 248
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/videolan/libvlc/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 0
    .param p1, "looping"    # Z

    .prologue
    .line 371
    return-void
.end method

.method public setNextMediaPlayer(Lorg/videolan/libvlc/media/MediaPlayer;)V
    .locals 0
    .param p1, "next"    # Lorg/videolan/libvlc/media/MediaPlayer;

    .prologue
    .line 343
    return-void
.end method

.method public setOnBufferingUpdateListener(Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 520
    iput-object p1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnBufferingUpdateListener:Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

    .line 521
    return-void
.end method

.method public setOnCompletionListener(Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 516
    iput-object p1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnCompletionListener:Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    .line 517
    return-void
.end method

.method public setOnErrorListener(Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 534
    iput-object p1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    .line 535
    return-void
.end method

.method public setOnInfoListener(Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 538
    iput-object p1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnInfoListener:Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    .line 539
    return-void
.end method

.method public setOnPreparedListener(Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 512
    iput-object p1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnPreparedListener:Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    .line 513
    return-void
.end method

.method public setOnSeekCompleteListener(Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 524
    iput-object p1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnSeekCompleteListener:Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;

    .line 525
    return-void
.end method

.method public setOnTimedTextListener(Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;

    .prologue
    .line 531
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 528
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 298
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 255
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/videolan/libvlc/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public setVideoScalingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 262
    return-void
.end method

.method public setVolume(FF)V
    .locals 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 378
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    add-float v1, p1, p2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    goto :goto_0
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 295
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=============start()========MediaPlayer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mOnErrorListener:Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-interface {v0, p0, v1, v2}, Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;->onError(Lorg/videolan/libvlc/media/MediaPlayer;II)Z

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mIsPlaying:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 277
    const-string v0, "MediaPlayer_vlc"

    const-string v1, "-----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mIsPlaying:Z

    goto :goto_0
.end method
