.class public abstract Lcom/acloud/stub/player/XYMediaPlayer;
.super Ljava/lang/Object;
.source "XYMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;,
        Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;,
        Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;,
        Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;,
        Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;
    }
.end annotation


# static fields
.field public static final STATE_BUFFERED:I = 0xa

.field public static final STATE_BUFFERING:I = 0x9

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PREPARED:I = 0x2

.field public static final STATE_PREPARING:I = 0x1

.field public static final STATE_RESUME:I = 0x7

.field public static final STATE_SUSPEND:I = 0x6

.field public static final STATE_SUSPEND_UNSUPPORTED:I = 0x8


# instance fields
.field private mCurrentState:I

.field protected mOnBufferingUpdateListener:Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;

.field protected mOnCompletionListener:Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;

.field protected mOnErrorListener:Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;

.field protected mOnInfoListener:Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;

.field protected mOnPreparedListener:Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mOnBufferingUpdateListener:Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;

    .line 35
    iput-object v0, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mOnCompletionListener:Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;

    .line 36
    iput-object v0, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mOnErrorListener:Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;

    .line 37
    iput-object v0, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mOnInfoListener:Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;

    .line 38
    iput-object v0, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mOnPreparedListener:Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mCurrentState:I

    .line 20
    return-void
.end method

.method protected static getDefMediaPlayer()Lcom/acloud/stub/player/XYMediaPlayer;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/acloud/stub/player/DefMediaPlayer;

    invoke-direct {v0}, Lcom/acloud/stub/player/DefMediaPlayer;-><init>()V

    return-object v0
.end method

.method public static getMediaPlayer(ILandroid/content/Context;)Lcom/acloud/stub/player/XYMediaPlayer;
    .locals 1
    .param p0, "playerMode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    packed-switch p0, :pswitch_data_0

    .line 74
    invoke-static {p1}, Lcom/acloud/stub/player/XYMediaPlayer;->getVlcMediaPlayer(Landroid/content/Context;)Lcom/acloud/stub/player/XYMediaPlayer;

    move-result-object v0

    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    invoke-static {}, Lcom/acloud/stub/player/XYMediaPlayer;->getDefMediaPlayer()Lcom/acloud/stub/player/XYMediaPlayer;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-static {p1}, Lcom/acloud/stub/player/XYMediaPlayer;->getVtmMediaPlayer(Landroid/content/Context;)Lcom/acloud/stub/player/XYMediaPlayer;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-static {p1}, Lcom/acloud/stub/player/XYMediaPlayer;->getVlcMediaPlayer(Landroid/content/Context;)Lcom/acloud/stub/player/XYMediaPlayer;

    move-result-object v0

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static getVlcMediaPlayer(Landroid/content/Context;)Lcom/acloud/stub/player/XYMediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v0, Lcom/acloud/stub/player/VlcMediaPlayer;

    invoke-direct {v0, p0}, Lcom/acloud/stub/player/VlcMediaPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected static getVtmMediaPlayer(Landroid/content/Context;)Lcom/acloud/stub/player/XYMediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Lcom/acloud/stub/player/VtmMediaPlayer;

    invoke-direct {v0, p0}, Lcom/acloud/stub/player/VtmMediaPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract getAudioSessionId()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method protected isInPlaybackState(Lcom/acloud/stub/player/XYMediaPlayer;)Z
    .locals 3
    .param p1, "mp"    # Lcom/acloud/stub/player/XYMediaPlayer;

    .prologue
    const/4 v0, 0x1

    .line 100
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isLooping()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareAsync()V
.end method

.method protected printLogMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 165
    return-void
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setLooping(Z)V
.end method

.method public setOnBufferingUpdateListener(Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mOnBufferingUpdateListener:Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;

    .line 80
    return-void
.end method

.method public setOnCompletionListener(Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mOnCompletionListener:Lcom/acloud/stub/player/XYMediaPlayer$OnCompletionListener;

    .line 84
    return-void
.end method

.method public setOnErrorListener(Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mOnErrorListener:Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;

    .line 88
    return-void
.end method

.method public setOnInfoListener(Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mOnInfoListener:Lcom/acloud/stub/player/XYMediaPlayer$OnInfoListener;

    .line 92
    return-void
.end method

.method public setOnPreparedListener(Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/acloud/stub/player/XYMediaPlayer;->mOnPreparedListener:Lcom/acloud/stub/player/XYMediaPlayer$OnPreparedListener;

    .line 96
    return-void
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
